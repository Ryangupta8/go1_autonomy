# go1_autonomy

A collection of ROS packages for usage with the real Go1 Robot.

1. Dependencies:
    - [unitree_legged_sdk](https://github.com/unitreerobotics/unitree_legged_sdk)
    - [enml dependencies](https://github.com/ut-amrl/enml)
    - [rplidar](https://github.com/Slamtec/rplidar_ros) or [velodyne](https://github.com/ros-drivers/velodyne)
    - [Realsense](https://github.com/IntelRealSense/realsense-ros)
2. Third Party References (Cite if using this repository):
Implementation in C++ of Episodic non-Markov Localization [[pdf]](https://www.joydeepb.com/Publications/ras_episodic_nonmarkov_localization.pdf).
Please cite this work using the following bibtex:
```
@article{biswas2016episodic,
  author = { Joydeep Biswas and Manuela M. Veloso },
  url = { https://www.joydeepb.com/Publications/ras_episodic_nonmarkov_localization.pdf },
  doi = { 10.1016/j.robot.2016.09.005 },
  issn = { 0921-8890 },
  year = { 2017 },
  pages = { 162 - 176 },
  volume = { 87 },
  journal = { Robotics and Autonomous Systems  },
  title = { Episodic non-Markov localization },
}
```


## Build 
```
cd catkin_ws/src
git clone git@github.com:Ryangupta8/go1_autonomy.git
source catkin_ws/devel/setup.bash
catkin build
cd go1_autonomy/amrl_msgs
export ROS_PACKAGE_PATH=`pwd`:$ROS_PACKAGE_PATH
make
cd .. && export ROS_PACKAGE_PATH=`pwd`:$ROS_PACKAGE_PATH
make
```

