#! /usr/bin/env python

import rospy
from my_custom_srv_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageResponse # you import the service message python classes 
from geometry_msgs.msg import Twist # importing the twist message from geomerty_msgs::: this is for publishing the message to the robot 


def my_callback(request):
    print("Request Data==> duration="+str(request.duration))
    my_response = MyCustomServiceMessageResponse()
    rospy.loginfo("The Service move_bb8_in_circle has been called") # I believe this publishes to the screen the topic      
    var.linear.x = 1  # assigning the value of the x linear cordinate 
    var.angular.z = 1  # assigning the z axis to turn at speed 1 counterclockwise
    pub.publish(var) # after we have assigned the new values we need to publish to the topic so the machine can listen perfom that action 
    rospy.loginfo("Finished service move_bb8_in_circle") # print to screen this text

    """ I could also use a while loop but that is a bad idea because of half seconds """

    rospy.sleep(request.duration)
    
    var.linear.x = 0  # assigning the value of the x linear cordinate 
    var.angular.z = 0  # assigning the z axis to turn at speed 1 counterclockwise
    pub.publish(var) # after we have assigned the new values we need to publish to the topic so the machine can listen perfom that action 
    my_response.success = True
    return  my_response # the service Response class, in this case MyCustomServiceMessageResponse


var = Twist() # creating an instance of the twist class to use in the function
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1) # initilizing a publisher so we can publish whatever we want to the /cmd_vel topic 
rospy.init_node('bb8_move_custom_service_server') 
my_service = rospy.Service('/move_bb8_in_circle_custom', MyCustomServiceMessage , my_callback) # create the Service called my_service with the defined callback
rospy.loginfo("Service /move_bb8_in_circle Ready") # prints this as a log 
rospy.spin() # maintain the service open.


