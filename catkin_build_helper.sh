#!/bin/bash

echo *****************************************************Starting to build ROS packages************************************************************ 
catkin build
source devel/setup.bash
echo *****************************************************Sucessfully sourced the setup.bash************************************************************ 
