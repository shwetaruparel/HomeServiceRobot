#!/bin/sh
catkin_dir=/home/workspace/catkin_ws
catkin_src_dir=$catkin_dir/src

xterm -e " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$catkin_src_dir/Worlds/homerobot.world " &
sleep 5
xterm -e " roslaunch turtlebot_gazebo gmapping_demo.launch " &
sleep 5
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5
xterm -e "rosrun wall_follower wall_follower_node"
sleep 5