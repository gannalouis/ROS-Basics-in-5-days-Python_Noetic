#! /usr/bin/env python

import rospy
from std_srvs.srv import Empty, EmptyResponse # you import the service message python classes generated from Empty.srv.
from geometry_msgs.msg import Twist # importing the twist message from geomerty_msgs::: this is for publishing the message to the robot 


def my_callback(request): # if empty service is called then, code goes to this function
    rospy.loginfo("The Service move_bb8_in_circle has been called") # I believe this publishes to the screen the topic      
    var.linear.x = 1  # assigning the value of the x linear cordinate 
    var.angular.z = 1  # assigning the z axis to turn at speed 1 counterclockwise  
    pub.publish(var) # after we have assigned the new values we need to publish to the topic so the machine can listen perfom that action 
    rospy.loginfo("Finished service move_bb8_in_circle") # print to screen this text 
    return EmptyResponse() # the service Response class, in this case EmptyResponse

var = Twist() # creating an instance of the twist class to use in the function
rospy.init_node('move_bb8_in_circle') # this is the node name 
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1) # initilizing a publisher so we can publish whatever we want to the /cmd_vel topic 
my_service = rospy.Service('/my_service', Empty , my_callback) # create the Service called my_service with the defined callback
rospy.loginfo("Service /move_bb8_in_circle Ready") # prints this as a log 
rospy.spin() # maintain the service open.