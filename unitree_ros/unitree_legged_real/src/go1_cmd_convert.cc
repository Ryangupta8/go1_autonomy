#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <unitree_legged_msgs/HighState.h>
#include <unitree_legged_msgs/HighCmd.h>
#include "unitree_legged_sdk/unitree_legged_sdk.h"
#include <std_msgs/Bool.h>
#include <nav_msgs/Odometry.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2_ros/static_transform_broadcaster.h>
#include <tf/transform_broadcaster.h>

using namespace UNITREE_LEGGED_SDK;
using namespace std;

class Listener{
  public:
    double vx, vy, vrz;
    float vx_est, vy_est, vrz_est;

  void twist_cb(const geometry_msgs::Twist::ConstPtr& msg){
    vx = msg->linear.x;
    vy = msg->linear.y;
    vrz = msg->angular.z;
  }

  void state_cb(const unitree_legged_msgs::HighState::ConstPtr& msg){
    vx_est = msg->velocity[0];
    vy_est = msg->velocity[1];
    vrz_est = msg->velocity[2];

    // std::cout << "vx, vy, vrz = " << vx_est << ", " << vy_est << ", " <<vrz_est << std::endl;
  }

};

int main(int argc, char *argv[]){
  std::cout << "WARNING: Control level is set to HIGH-level." << std::endl
            << "Make sure the robot is standing on the ground." << std::endl
            << "Press Enter to continue..." << std::endl;
  std::cin.ignore();

  ros::init(argc, argv, "go1_driver_node");
  ros::NodeHandle n;
  ros::Rate loop_rate(500);

  Listener listener;

  ros::Subscriber cmd_vel_sub = n.subscribe("/cmd_vel", 1000, &Listener::twist_cb, &listener);
  ros::Subscriber high_state_sub = n.subscribe("/high_state", 1000, &Listener::state_cb, &listener);
  ros::Publisher high_cmd_pub = n.advertise<unitree_legged_msgs::HighCmd>("/high_cmd",100);
  ros::Publisher autonomy_pub = n.advertise<std_msgs::Bool>("/autonomy_arbiter/enabled", 1000);
  ros::Publisher odom_pub = n.advertise<nav_msgs::Odometry>("/robot/odom", 1000);

  std_msgs::Bool bool_msg; bool_msg.data = true;

  unitree_legged_msgs::HighCmd cmd;
  cmd.head[0] = 0xFE;
  cmd.head[1] = 0xEF;
  cmd.levelFlag = HIGHLEVEL;
  cmd.mode = 1;
  cmd.gaitType = 0;
  cmd.speedLevel = 0;
  cmd.footRaiseHeight = 0.;
  cmd.bodyHeight = 0.;
  cmd.euler[0] = 0.;
  cmd.euler[1] = 0.;
  cmd.euler[2] = 0.;
  cmd.velocity[0] = 0.0f;
  cmd.velocity[1] = 0.0f;
  cmd.yawSpeed = 0.0f;
  cmd.reserve = 0;

  nav_msgs::Odometry odom;
  odom.header.frame_id = "odom";
  odom.child_frame_id = "base";

  double x = 0.0;
  double y = 0.0;
  double th = 0.0;

  ros::Time current_time, last_time;
  current_time = ros::Time::now();
  last_time = ros::Time::now();

  while (ros::ok()){
    ros::spinOnce();

    autonomy_pub.publish(bool_msg);

    if(listener.vx == 0 && listener.vy == 0 && listener.vrz == 0){
      cmd.velocity[0] = 0.0f;
      cmd.velocity[1] = 0.0f;
      cmd.yawSpeed = 0.0f;
      cmd.mode = 1;
      cmd.gaitType = 0;
    } else{
      cmd.mode = 2;
      cmd.velocity[0] = listener.vx;
      cmd.velocity[1] = listener.vy;
      cmd.yawSpeed = listener.vrz;
      cmd.gaitType = 1;
    }

    double dt = (current_time - last_time).toSec();
    double delta_x = (listener.vx_est * cos(th) - listener.vy_est * sin(th)) * dt;
    double delta_y = (listener.vx_est * sin(th) - listener.vy_est * cos(th)) * dt;
    double delta_th = listener.vrz_est * dt;

    x += delta_x;
    y += delta_y;
    th += delta_th;

    geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(th);
    odom.pose.pose.position.x = x;
    odom.pose.pose.position.y = y;
    odom.pose.pose.position.z = 0.0;
    odom.pose.pose.orientation = odom_quat;



    odom.twist.twist.linear.x = listener.vx_est;
    odom.twist.twist.linear.y = listener.vy_est;
    odom.twist.twist.angular.z = listener.vrz_est;
    odom.header.stamp = current_time;

    high_cmd_pub.publish(cmd);
    odom_pub.publish(odom);
    last_time = current_time;
    current_time = ros::Time::now();
  }

  return 0;
}
