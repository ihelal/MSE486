#!/bin/bash

source /opt/ros/melodic/setup.bash
source ~/486_ws/devel/setup.bash 


xterm -hold -e  "roslaunch handheld_description  description.launch" &
sleep 5
# xterm -hold -e  "roslaunch realsense2_camera rs_camera.launch camera:=d435 serial_no:=827312073651 " &
# sleep 5
xterm -hold -e  "roslaunch astra_camera astrapro.launch camera:=astra" &
sleep 5
xterm -hold -e  "roslaunch realsense2_camera rs_t265.launch camera:=t265 serial_no:=929122111035" &
sleep 5
xterm -hold -e  "roslaunch handheld_description depth_scan.launch" &
# sleep 5
# xterm -hold -e  "rosbag record -a"
