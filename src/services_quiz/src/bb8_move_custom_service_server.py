#! /usr/bin/env python

import rospy
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageResponse # you import the service message python classes 
from geometry_msgs.msg import Twist # importing the twist message from geomerty_msgs::: this is for publishing the message to the robot 


def publisher(move_forward, turn, distance): #publishes a to the twist message, imput is if you need to move forward, turn and for how long
    var.linear.x = move_forward
    var.angular.z = turn
    pub.publish(var)
    rospy.sleep(distance)
    var.linear.x = 0
    var.angular.z = 0
    pub.publish(var)

def ServiceServer(request): #creates the square patten and allows for repition 
    for x in range(request.repetitions):
        for y in range(4):
            publisher(1, 0, request.side) # using the funciton to move straight 
            publisher(0, 1, 2.1) # using the funcion to turn 
    
def my_callback(request): #call back this is where the code goes to when the service is called 
    print("Request Data==> side="+str(request.side))
    print("Request Data==> repetitions="+str(request.repetitions))
    my_response = BB8CustomServiceMessageResponse()
    rospy.loginfo("The Service move_bb8_in_circle has been called") # I believe this publishes to the screen the topic
    
    ServiceServer(request) #how we excecute the code the request conatins the message values
    
    my_response.success = True #setting the reponse to true 
    return  my_response # the service Response class, in this case BB8CustomServiceMessageResponse


var = Twist() # creating an instance of the twist class to use in the function
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1) # initilizing a publisher so we can publish whatever we want to the /cmd_vel topic 
rospy.init_node('bb8_move_custom_service_server_quiz') #node name 
my_service = rospy.Service('/move_bb8_in_square_custom', BB8CustomServiceMessage , my_callback) # create the Service called my_service with the defined callback
rospy.loginfo("Service /move_bb8_in_circle Ready") # prints this as a log 
rospy.spin() # maintain the service open.


