#! /usr/bin/env python

import rospy                                          
from sensor_msgs.msg import LaserScan                 # importing sensor_msgs look at rostopic info LaserScan for exact message 

def callback(msg):                                    # Define a function called 'callback' that receives a parameter 
    bob = msg.ranges #This will print the whole Odometry message
# print(msg.header) #This will print the header section of the Odometry message
# print(msg.pose) # #This will print the pose section of the Odometry message
# all of these can be found by using rosmsg show <message> 
rospy.init_node('laser_scan')                # Initiate a Node called 'odometry_subscriber'

sub = rospy.Subscriber('/kobuki/laser/scan', LaserScan, callback)   # Create a Subscriber object that will listen to the /odom
                                                  # need to include the Odomery library 
                                                      # topic and will cal the 'callback' function each time it reads
                                                      # something from the topic
rospy.spin()                                          # Create a loop that will keep the program in execution