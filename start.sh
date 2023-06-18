#!/bin/sh

gnome-terminal --command "sh beagle_start.sh"

gnome-terminal --command "sh camera.sh"
gnome-terminal --command "sh camera_undistort.sh"
gnome-terminal --command "sh object_detection.sh"

gnome-terminal --command "sh static_tf_start.sh"

gnome-terminal --command "sh odometry_start.sh"
sleep 10s
gnome-terminal --command "sh ros2_slam_start.sh"
sleep 5s
gnome-terminal --command "rviz2"

gnome-terminal --command "sh motor_start.sh"

echo "CTRL+C to exit"
while true;
do
  sleep 1
done
