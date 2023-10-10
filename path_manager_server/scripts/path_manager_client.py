#!/usr/bin/env python

import roslib
roslib.load_manifest('path_manager_server')
import rospy
import actionlib
import tf
from geometry_msgs.msg import Quaternion
import yaml
from tf.transformations import euler_from_quaternion, quaternion_from_euler


from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped
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

class path_manager_client():
    def __init__(self):
        self.path = Path()
        self.load_path()

        client = actionlib.SimpleActionClient('path_manager', PathManagerAction)
        client.wait_for_server()

        goal = PathManagerGoal()
        # Fill in the goal here
        goal.path = self.path

        client.send_goal(goal)
        # client.wait_for_result(rospy.Duration.from_sec(5.0))



    def load_path(self):
        with open('paths.yaml') as file:
            yaml_data=yaml.load(file, Loader=yaml.Loader)

            path_info_ = path_info(yaml_data['nav_l2r_path1'])

            self.path = path_info_.get_path()

            self.path.header.stamp=rospy.Time.now()
            self.path.header.frame_id="map"
            

if __name__ == '__main__':
    rospy.init_node('path_manager_client')

    path_client = path_manager_client()

    
