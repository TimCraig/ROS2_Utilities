#!/bin/bash

# Convenince funcions for working with ROS2.
# Source into your terminal session to use or for regular use source in your .bashrc
# Author Tim Craig  (TimCraig@Druai.com)  2020  
# No warranties implied or otherwise.  

# Change the working directory to the ROS distro include directory
rosinc() {
   pushd /opt/ros/${ROS_DISTRO}/include
}

# Change the working directory to the ROS distro rclcpp include directory
rclcpp() {
   pushd /opt/ros/${ROS_DISTRO}/include/rclcpp
}

# Source ROS2 Setup for the specified distro
# Convenient for switching between multiple distros
ROS2Setup() {
   source /opt/ros/$1/setup.bash
}

# Setup ROS2 Dashing
Dashing() {
   ROS2Setup dashing
}

# Setup ROS2 Eloquent
Eloquent() {
   ROS2Setup eloquent
}

# Print the current ROS environment variables
ROSEnv() {
   env | grep "ROS"
}

# Print where the current ROS distro is mentioned in the environment
ROSDistroEnv() {
   env | grep ${ROS_DISTRO}
}

# Change directories to the specified ROS2 workspace and source local setup files
ros2ws() {
   CurrentROS2WS=$1
   #Change to the specified directory
   cd ${HOME}/$1
   #Source the workspace environment
   source /usr/share/gazebo/setup.sh
   source ./install/setup.bash
}

#*************
# Add your particular workspaces here
#*************

# Change the working directory to our colcon_ws ROS2 workspace
colconws() {
   ros2ws ros2/colcon_ws
}

# Change the working directory to our test_ws ROS2 workspace
testws() {
   ros2ws ros2/test_ws
}

# Change the working directory to our druai_ws ROS2 workspace
druaiws() {
   ros2ws ros2/druai_ws
}

# Print where the current ROS workspace is mentioned in the environment
ROSWSEnv() {
   env | grep ${CurrentROS2WS}
}

