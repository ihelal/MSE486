#!/bin/bash

source /opt/ros/melodic/setup.bash  
source ~/486_ws/devel/setup.bash 

xterm -hold -e  "roslaunch handheld_description rtab_mapping.launch" &
sleep 5
xterm -hold -e  "rosrun rviz rviz -d `rospack find handheld_description`/rviz/rtab.rviz" &
# sleep 5
# xterm -hold -e  "rosbag record -a" 