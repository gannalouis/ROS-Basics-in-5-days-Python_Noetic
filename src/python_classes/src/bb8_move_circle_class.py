#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist

class MoveBB8():
    
    def __init__(self): #this is the constructor of the class / defining several attributes
        self.bb8_vel_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.cmd = Twist()
        self.ctrl_c = False
        self.rate = rospy.Rate(10) # 10hz
        rospy.on_shutdown(self.shutdownhook) # when the ros program is closed the shutdownhook will be triggered
        
    def publish_once_in_cmd_vel(self):#This class method is used in order to make sure that the first message we publish into a topic is successfully received
        """
        This is because publishing in topics sometimes fails the first time you publish.
        In continuous publishing systems, this is no big deal, but in systems that publish only
        once, it IS very important.
        """
        while not self.ctrl_c:
            connections = self.bb8_vel_publisher.get_num_connections()
            if connections > 0:
                self.bb8_vel_publisher.publish(self.cmd)
                rospy.loginfo("Cmd Published")
                break
            else:
                self.rate.sleep()
        
    def shutdownhook(self): # this method will be called when our ROS program is closed
        # works better than the rospy.is_shutdown()
        self.ctrl_c = True # setting this boolean value to true 

    def move_bb8(self, linear_speed=0.2, angular_speed=0.2): #this method is used to move the robot 
        
        self.cmd.linear.x = linear_speed
        self.cmd.angular.z = angular_speed
        
        rospy.loginfo("Moving BB8!")
        self.publish_once_in_cmd_vel() # call the number of topics publishing method 
            
if __name__ == '__main__':
    rospy.init_node('move_bb8_test', anonymous=True) # creating a ros node 
    movebb8_object = MoveBB8() # create an object of the MoveBB8 class
    try:
        movebb8_object.move_bb8() # call the method of the class to start moving the robot 
    except rospy.ROSInterruptException: # if the call to this method fails, the error will be caught by the ROSiNTERRUPTeXCEPTION 
        pass