#!/usr/bin/env bash
CMD_1="roscore"
CMD_2="rosrun ORB_SLAM2 Stereo $(pwd)/ORB_SLAM2/Vocabulary/ORBvoc.txt $(pwd)/ORB_SLAM2/Examples/Stereo/EuRoC.yaml true"
CMD_3="rosbag play --pause $(pwd)/V1_01_easy.bag /cam0/image_raw:=/camera/left/image_raw /cam1/image_raw:=/camera/right/image_raw"

mkdir run
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/ORB_SLAM2/Examples/ROS
cd run
#running 
gnome-terminal -- bash -c "$CMD_1"
sleep 5
gnome-terminal -- bash -c "$CMD_2"
sleep 8
gnome-terminal -- bash -c  "$CMD_3" 
