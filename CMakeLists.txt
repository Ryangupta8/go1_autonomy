PROJECT(go1_autonomy)
CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

SET(CMAKE_AUTOMOC ON)
SET(CMAKE_AUTORCC ON)
SET(CMAKE_AUTOUIC ON)

SET(CMAKE_CXX_FLAGS "-march=native -Wall -Werror -g -Wno-unused-function")
set(CMAKE_CXX_STANDARD 14)

IF(${CMAKE_BUILD_TYPE} MATCHES "Release")
  MESSAGE(STATUS "Additional Flags for Release mode")
  SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -fopenmp -fno-builtin-malloc \
      -fno-builtin-calloc -fno-builtin-realloc -fno-builtin-free -O3 -DNDEBUG")
  SET(BUILD_SPECIFIC_LIBRARIES "tcmalloc")
ELSEIF(${CMAKE_BUILD_TYPE} MATCHES "Debug")
  MESSAGE(STATUS "Additional Flags for Debug mode")
  SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -g")
  SET(BUILD_SPECIFIC_LIBRARIES "")
ENDIF()

MESSAGE(STATUS "SOURCE DIR: ${PROJECT_SOURCE_DIR}")

# Qt setup (needs to precede executable)
set(CMAKE_AUTOMOC on)
set(CMAKE_AUTORCC on)
set(CMAKE_AUTOUIC on)
set(CMAKE_INCLUDE_CURRENT_DIR on)
find_package(Qt5 COMPONENTS Core Widgets WebSockets REQUIRED)

FIND_PACKAGE(Lua51 REQUIRED)
FIND_PACKAGE(Eigen3 REQUIRED)
FIND_PACKAGE(Ceres REQUIRED)

INCLUDE($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
ROSBUILD_INIT()
SET(ROS_BUILD_STATIC_LIBS true)
SET(ROS_BUILD_SHARED_LIBS false)

LIST(APPEND CMAKE_PREFIX_PATH "/opt/libtorch")
FIND_PACKAGE(Torch REQUIRED)
FIND_PACKAGE(OpenCV REQUIRED)

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

find_package(catkin REQUIRED COMPONENTS
      cv_bridge
      roscpp
      image_transport
)


SET(libs roslib roscpp rosbag glog gflags amrl_shared_lib boost_system lua5.1
    pthread image_transport cv_bridge)

ADD_LIBRARY(shared_library
            graph_navigation/src/visualization/visualization.cc
            graph_navigation/src/vector_map/vector_map.cc)
ADD_SUBDIRECTORY(amrl_shared_lib)
# ADD_SUBDIRECTORY(graph_navigation/src/shared)
# INCLUDE_DIRECTORIES(graph_navigation/src/shared)
INCLUDE_DIRECTORIES(amrl_shared_lib)
INCLUDE_DIRECTORIES(config-reader/include)
INCLUDE_DIRECTORIES(graph_navigation/src/third_party)
INCLUDE_DIRECTORIES(graph_navigation/src)
INCLUDE_DIRECTORIES(${OpenCV_INCLUDE_DIRS})

INCLUDE_DIRECTORIES(${PROJECT_SOURCE_DIR})

ROSBUILD_GENMSG()
ROSBUILD_GENSRV()

MESSAGE(STATUS "Includes: ${INCLUDE_DIRECTORIES}")


# ADD_SUBDIRECTORY(${PROJECT_SOURCE_DIR}/enml/src/shared)
 ROSBUILD_ADD_EXECUTABLE(enml_go1
     enml/src/non_markov_localization_main_go1.cpp
     enml/src/non_markov_localization.cpp
     enml/src/kdtree.cpp
     enml/src/perception_2d.cpp
     enml/src/vector_map/vector_map.cc
     enml/src/visualization/visualization.cc
     enml/src/visualization/gui_helpers.cc)
 TARGET_INCLUDE_DIRECTORIES(enml_go1 PRIVATE
     amrl_shared_lib
     config-reader/include
     enml/src
     enml/src/shared
     enml/src/config-reader/include
     ${LUA_INCLUDE_DIR}
     ${CERES_INCLUDE_DIRS})
 ADD_DEPENDENCIES(enml_go1 rosbuild_precompile)
 TARGET_LINK_LIBRARIES(enml_go1 ceres roslib roscpp ncurses pthread boost_system
     ${LUA_LIBRARIES} rt popt glog rosbag amrl_shared_lib
     ${BUILD_SPECIFIC_LIBRARIES})


 ROSBUILD_ADD_EXECUTABLE(enml_go1_daq
     enml/src/non_markov_localization_main_go1_daq.cpp
     enml/src/non_markov_localization.cpp
     enml/src/kdtree.cpp
     enml/src/perception_2d.cpp
     enml/src/vector_map/vector_map.cc
     enml/src/visualization/visualization.cc
     enml/src/visualization/gui_helpers.cc)
 TARGET_INCLUDE_DIRECTORIES(enml_go1_daq PRIVATE
     amrl_shared_lib
     config-reader/include
     enml/src
     enml/src/shared
     enml/src/config-reader/include
     ${LUA_INCLUDE_DIR}
     ${CERES_INCLUDE_DIRS})
 ADD_DEPENDENCIES(enml_go1_daq rosbuild_precompile)
 TARGET_LINK_LIBRARIES(enml_go1_daq ceres roslib roscpp ncurses pthread boost_system
     ${LUA_LIBRARIES} rt popt glog rosbag amrl_shared_lib
     ${BUILD_SPECIFIC_LIBRARIES})




# ROSBUILD_ADD_EXECUTABLE(enml
#     enml/src/non_markov_localization_main.cpp
#     enml/src/non_markov_localization.cpp
#     enml/src/kdtree.cpp
#     enml/src/perception_2d.cpp
#     enml/src/vector_map/vector_map.cc
#     enml/src/visualization/visualization.cc
#     enml/src/visualization/gui_helpers.cc)
# TARGET_INCLUDE_DIRECTORIES(enml PRIVATE
#     amrl_shared_lib
#     config-reader/include
#     enml/src
#     enml/src/shared
#     enml/src/config-reader/include
#     ${LUA_INCLUDE_DIR}
#     ${CERES_INCLUDE_DIRS})
# ADD_DEPENDENCIES(enml rosbuild_precompile)
# TARGET_LINK_LIBRARIES(enml ceres roslib roscpp ncurses pthread boost_system
#     ${LUA_LIBRARIES} rt popt glog rosbag amrl_shared_lib
#     ${BUILD_SPECIFIC_LIBRARIES})

# ROSBUILD_ADD_EXECUTABLE(websocket_a1_950
#      webviz/src/websocket/websocket_main_a1_950.cc
#      webviz/src/websocket/websocket.cc)
#  TARGET_INCLUDE_DIRECTORIES(websocket_a1_950 PRIVATE
#      amrl_shared_lib
#      webviz/src)
#  TARGET_LINK_LIBRARIES(websocket_a1_950
#      Qt5::Core
#      Qt5::Widgets
#      Qt5::WebSockets
#      glog
#      gflags
#      amrl_shared_lib
#      ${BUILD_SPECIFIC_LIBRARIES})

# ROSBUILD_ADD_EXECUTABLE(websocket
#      webviz/src/websocket/websocket_main.cc
#      webviz/src/websocket/websocket.cc)
#  TARGET_INCLUDE_DIRECTORIES(websocket PRIVATE
#      amrl_shared_lib
#      webviz/src)
#  TARGET_LINK_LIBRARIES(websocket
#      Qt5::Core
#      Qt5::Widgets
#      Qt5::WebSockets
#      glog
#      gflags
#      amrl_shared_lib
#      ${BUILD_SPECIFIC_LIBRARIES})

ROSBUILD_ADD_EXECUTABLE(pointcloud_to_laserscan
    pointcloud_to_laserscan/pointcloud_to_laserscan_main.cc)
TARGET_INCLUDE_DIRECTORIES(pointcloud_to_laserscan PRIVATE
    config-reader/include
    enml/src/shared
    amrl_shared_lib
    ${LUA_INCLUDE_DIR})
TARGET_LINK_LIBRARIES(pointcloud_to_laserscan
    glog
    gflags
    amrl_shared_lib
    roscpp
    ${LUA_LIBRARIES}
    ${BUILD_SPECIFIC_LIBRARIES})


ROSBUILD_ADD_EXECUTABLE(navigation_go1
                        graph_navigation/src/navigation/navigation_main_go1.cc
                        graph_navigation/src/navigation/navigation.cc
                        graph_navigation/src/navigation/motion_primitives.cc
                        graph_navigation/src/navigation/ackermann_motion_primitives.cc
                        graph_navigation/src/navigation/constant_curvature_arcs.cc
                        graph_navigation/src/navigation/linear_evaluator.cc
                        graph_navigation/src/navigation/image_tiler.cc
                        graph_navigation/src/navigation/deep_cost_map_evaluator.cc
                        graph_navigation/src/navigation/image_based_evaluator.cc
)
TARGET_LINK_LIBRARIES(navigation_go1
    shared_library 
    ${libs} 
    ${TORCH_LIBRARIES} 
    ${OpenCV_LIBS} 
    image_transport
    cv_bridge
)

ADD_DEPENDENCIES(navigation_go1 ${catkin_EXPORTED_TARGETS})






