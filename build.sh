#!/usr/bin/env bash
./clean.sh > /dev/null 2> /dev/null
if [ ! -f V1_01_easy.bag ]; then
    curl http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/vicon_room1/V1_01_easy/V1_01_easy.bag -O
fi
cd ORB_SLAM2
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:$(pwd)/Examples/ROS
./build.sh
./build_ros.sh
cd ../cluster
mkdir build
cd build
cmake ..
cmake --build .
