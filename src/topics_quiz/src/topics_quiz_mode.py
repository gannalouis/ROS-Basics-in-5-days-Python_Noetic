#! /usr/bin/env python
import rospy                                                    # Importing rospy    
from sensor_msgs.msg import LaserScan                           # Importing LaserScan from sensor_msgs message to use for subscribing 
from geometry_msgs.msg import Twist                             # Importing Twist message to publish messages to the topic /cmd_vel
directions = Twist()                                            # Creating an instance of Twist to tinker with and use as a subsciber 

def callback(msg):                                              # Messages are received, callback is invoked with the message as the first argument. 
    list = msg.ranges                                           # Creating an list from the selectd portion of the array 
    pub.publish(directions)                                     # Using the publisher, values are assigned to the Twist message and then published 
    if list[360] > 1:                                           # Cases /// need to make sure that robot position is reset after each case     
        print("robot is moving forward - no wall detected ")
        directions.angular.z = 0
        directions.linear.x = 0.25
    if list[360] < 1:
        print("wall detected! - will turn left")
        directions.linear.x = 0
        directions.angular.z = 0.25
    if list[719] < 1:
        print("robot will turn left")
        directions.linear.x = 0
        directions.angular.z = -0.25
    if list[0] < 1:
        print("robot will turn right")
        directions.linear.x = 0
        directions.angular.z = 0.25



while not rospy.is_shutdown():                                  # Create a loop that will go until someone stops the program execution
    rospy.init_node('robot_move')                               # Create node called 'move_robot'
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)      # Create a publisher oobject that is publishing a twist message to cmd_vel       
    rospy.init_node('robot_move')                               # Initiate a Node called 'odometry_subscriber'
    rospy.Subscriber('/kobuki/laser/scan', LaserScan, callback) # Create a Subscriber that will listen to the 
    rospy.spin()                                                # simply keeps python from exiting until this node is stopped
