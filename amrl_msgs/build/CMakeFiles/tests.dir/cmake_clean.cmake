file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/amrl_msgs/msg"
  "../src/amrl_msgs/srv"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/tests.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
