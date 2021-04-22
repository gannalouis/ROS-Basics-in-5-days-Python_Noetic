#! /usr/bin/env python
# This line will ensure the interpreter used is the first one on your environment's $PATH. Every Python file needs
# to start with this line at the top.

import rospy# Import the rospy, which is a Python library for ROS.

rospy.init_node('ObiWan')# Initiate a node called ObiWan
rate = rospy.Rate(2)
while not rospy.is_shutdown():
    print("Help me Obi-Wan Kenobi, you're my only hope") # A simple Python print
    rate.sleep()
        
# This program creates an endless loop that repeats itself 2 times per second (2Hz) until somebody presses Ctrl + C
# in the Shell