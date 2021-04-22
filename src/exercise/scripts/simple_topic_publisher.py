#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist 

rospy.init_node('move_robot')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(2)
var = Twist()
var.linear.x = 1
var.angular.z = 1

while not rospy.is_shutdown(): 
  pub.publish(var)
  print("running the move_robot node")
  rate.sleep()