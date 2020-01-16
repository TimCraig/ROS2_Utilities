#!/bin/bash

#Change the working directory to the ROS distro include directory
rosinc() {
   pushd /opt/ros/${ROS_DISTRO}/include
}

#Change the working directory to the ROS distro rclcpp include directory
rclcpp() {
   pushd /opt/ros/${ROS_DISTRO}/include/rclcpp
}

#Change directories to the specified ROS2 workspace and source ROS2 and local setup files
ros2ws() {
   #Change to the specified directory
   cd ${HOME}/$1
   #Source the ROS2 environment
   #Don't think this is necessary once WS is set up - TTC 
 #  source /opt/ros/$2/setup.bash
   #Source the workspace environment
   source ./install/setup.bash
}

#Change the working directory to our colcon_ws ROS2 workspace
colconws() {
   ros2ws ros2/colcon_ws
}

#Change the working directory to our test_ws ROS2 workspace
testws() {
   ros2ws ros2/test_ws
}

#Change the working directory to our test_ws ROS2 workspace
druaiws() {
   ros2ws ros2/druai_ws
}

#Source ROS2 Setup
ROS2Setup() {
   source /opt/ros/$1/setup.bash
}

#Setup ROS2 Dashing
Dashing() {
   ROS2Setup dashing
}

#Setup ROS2 Eloquent
Eloquent() {
   ROS2Setup eloquent
}
