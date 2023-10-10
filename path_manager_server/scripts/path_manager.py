#!/usr/bin/env python

import roslib
roslib.load_manifest('path_manager_server')
import rospy
import tf
from geometry_msgs.msg import Quaternion
import yaml
from tf.transformations import euler_from_quaternion, quaternion_from_euler
# from tf.Quaternion import Quaternion
import math


from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped, Pose
from path_manager_server.msg import PathManagerAction, PathManagerGoal


class path_info:
    def __init__(self, info_data=None):
        self.init_pos=[0,0]
        self.m_path=Path()
        self.set_info(info_data)
    def set_info(self, info_data):
        # print("info_data",info_data)
        if info_data!=None:
            for pos in info_data['pos']:
                tmp_pose=PoseStamped()
                tmp_pose.header.frame_id="map"
                tmp_pose.pose.position.x=pos[0]
                tmp_pose.pose.position.y=pos[1]
                quat = tf.transformations.quaternion_from_euler(0, 0, pos[2])
                tmp_pose.pose.orientation= Quaternion(*quat)
                self.m_path.poses.append(tmp_pose)
    def get_path(self):
        return self.m_path

class path_manager():
    def __init__(self):
        # rospy.init_node('path_manager', anonymous=True)
        self.path = Path()
        self.load_path()
        self.robot = PoseStamped()

    def callback(self, data):
        self.robot = data
        print("pose received")

    def load_path(self):
        with open('paths.yaml') as file:
            yaml_data=yaml.load(file, Loader=yaml.Loader)

            path_info_ = path_info(yaml_data['sep_search_l2r_go1'])

            self.path = path_info_.get_path()

            self.path.header.stamp=rospy.Time.now()
            self.path.header.frame_id="map"
            

if __name__ == '__main__':
    rospy.init_node('path_manager')

    path_manager = path_manager()
    rate = rospy.Rate(10)

    pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, queue_size=10)
    rospy.Subscriber('/localization_ros', PoseStamped, path_manager.callback,
                    queue_size=1)

    goal_msg = PoseStamped()
    prev_goal = Pose()

    goal_msg.header.stamp = rospy.Time.now()
    goal_msg.header.frame_id = "map"
    goal_msg.pose = path_manager.path.poses[0].pose
    prev_goal = goal_msg.pose;
    first = 1

    i = 1
    print("len(path_manager.path.poses) = ", len(path_manager.path.poses))
    while not rospy.is_shutdown():
        if(first):
            pub.publish(goal_msg)
            first = 0
        if(i < len(path_manager.path.poses) ):
            print("i = ",i)
            dist = math.sqrt(pow((path_manager.robot.pose.position.x - goal_msg.pose.position.x),2.0) + pow((path_manager.robot.pose.position.y - goal_msg.pose.position.y),2.0) )
            q = Quaternion()
            angles = euler_from_quaternion([path_manager.robot.pose.orientation.x, path_manager.robot.pose.orientation.y, path_manager.robot.pose.orientation.z, path_manager.robot.pose.orientation.w])
            angles2 = euler_from_quaternion([goal_msg.pose.orientation.x, goal_msg.pose.orientation.y, goal_msg.pose.orientation.z, goal_msg.pose.orientation.w])
            ang = abs(angles2[2] - angles[2])
            if (dist <= 0.9 and ang<=0.5):
                goal_msg.header.stamp = rospy.Time.now()
                goal_msg.header.frame_id = "map"
                goal_msg.pose = path_manager.path.poses[i].pose
                prev_goal = goal_msg.pose;
                pub.publish(goal_msg)
                i += 1
            rate.sleep()


