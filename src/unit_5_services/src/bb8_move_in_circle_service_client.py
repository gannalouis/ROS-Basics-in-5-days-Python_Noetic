#! /usr/bin/env python
import rospkg  
import rospy # including the ros libray 
from std_srvs.srv import Empty, EmptyRequest # you import the service message python classes generated from Empty.srv.

rospy.init_node('bb8_move_in_circle_service_client') # Initialise a ROS node with the name service_client
rospy.wait_for_service('/my_service') # Wait for the service server /execute_trajectory to be running
move_bb8_in_circle_service_client = rospy.ServiceProxy('/my_service', Empty) # Create the connection to the service
move_bb8_in_circle_request_object = EmptyRequest() # Create an object of type EmptyRequest

result = move_bb8_in_circle_service_client(move_bb8_in_circle_request_object) # Send through the connection the path to the trajectory file to be executed
print(result) # Print the result given by the service called