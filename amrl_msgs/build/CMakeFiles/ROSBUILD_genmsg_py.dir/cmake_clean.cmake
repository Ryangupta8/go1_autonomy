file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/amrl_msgs/msg"
  "../src/amrl_msgs/srv"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/amrl_msgs/msg/__init__.py"
  "../src/amrl_msgs/msg/_AckermannCurvatureDriveMsg.py"
  "../src/amrl_msgs/msg/_BBox2DArrayMsg.py"
  "../src/amrl_msgs/msg/_BBox2DMsg.py"
  "../src/amrl_msgs/msg/_ColoredArc2D.py"
  "../src/amrl_msgs/msg/_ColoredLine2D.py"
  "../src/amrl_msgs/msg/_ColoredPoint2D.py"
  "../src/amrl_msgs/msg/_ColoredText.py"
  "../src/amrl_msgs/msg/_ElevatorCommand.py"
  "../src/amrl_msgs/msg/_ElevatorStatus.py"
  "../src/amrl_msgs/msg/_ErrorReport.py"
  "../src/amrl_msgs/msg/_HumanStateArrayMsg.py"
  "../src/amrl_msgs/msg/_HumanStateMsg.py"
  "../src/amrl_msgs/msg/_Localization2DMsg.py"
  "../src/amrl_msgs/msg/_NavStatusMsg.py"
  "../src/amrl_msgs/msg/_PathVisualization.py"
  "../src/amrl_msgs/msg/_PlanarObjDetection.py"
  "../src/amrl_msgs/msg/_Point2D.py"
  "../src/amrl_msgs/msg/_Pose2Df.py"
  "../src/amrl_msgs/msg/_RobofleetStatus.py"
  "../src/amrl_msgs/msg/_RobofleetSubscription.py"
  "../src/amrl_msgs/msg/_VisualizationMsg.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
