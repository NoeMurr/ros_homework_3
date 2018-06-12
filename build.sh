#!/usr/bin/env bash
./clean.sh
cd ORB_SLAM2
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Examples/Ros
./build.sh
./build_ros.sh
cd ../cluster
mkdir build
cd build
cmake ..
cmake --build .
