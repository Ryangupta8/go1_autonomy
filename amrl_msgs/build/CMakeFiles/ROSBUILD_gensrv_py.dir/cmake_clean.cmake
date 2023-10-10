file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/amrl_msgs/msg"
  "../src/amrl_msgs/srv"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/amrl_msgs/srv/__init__.py"
  "../src/amrl_msgs/srv/_ObjectDetectionSrv.py"
  "../src/amrl_msgs/srv/_SocialPipsSrv.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
