#! /usr/bin/env python
import rospkg
import rospy
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageRequest # you import the service message python classes 


rospy.init_node('service_move_bb8_in_circle_custom_client') # Initialise a ROS node with the name service_client
rospy.wait_for_service('/move_bb8_in_square_custom') # Wait for the service client /move_bb8_in_circle_custom to be running
move_bb8_in_square_service_client = rospy.ServiceProxy('/move_bb8_in_square_custom', BB8CustomServiceMessage) # Create the connection to the service
move_bb8_in_square_request_object = BB8CustomServiceMessageRequest() # Create an object of type EmptyRequest


"""
# BB8CustomSAerviceMessage
float64 side       # The distance of each side of the circle
int32 repetitions    # The number of times BB-8 has to execute the circle movement when the service is called
---
bool success         # Did it achieve it?
"""

move_bb8_in_square_request_object.side = 4 # make sure that you are sending the request not a reponse because response only contains .sucess 
move_bb8_in_square_request_object.repetitions = 1

rospy.loginfo("Completing the large square")
result = move_bb8_in_square_service_client(move_bb8_in_square_request_object) # Send through the connection the path to the trajectory file to be executed

move_bb8_in_square_request_object.side = 2
move_bb8_in_square_request_object.repetitions = 1

rospy.loginfo("Completing the smaller square")
result = move_bb8_in_square_service_client(move_bb8_in_square_request_object) # Send through the connection the path to the trajectory file to be executed


rospy.loginfo(str(result)) # Print the result given by the service called

rospy.loginfo("END of Service call...")

