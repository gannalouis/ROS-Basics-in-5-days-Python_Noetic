#! /usr/bin/env python
import rospy
import time
import actionlib

from action_quiz.msg import CustomActionMsgFeedback, CustomActionMsgAction, CustomActionMsgResult
#from actionlib.msg import CustomActionMsgFeedback, CustomActionMsgGoal, TestAction  # importing this 
from geometry_msgs.msg import Twist   # regular importing 
from std_msgs.msg import Empty        # used for 

class CustomActionMsgClass(object): # creating an class cuz why not 
    
  # create messages that are used to publish feedback/result
  _feedback = CustomActionMsgFeedback()
  _result   = CustomActionMsgResult()

  def __init__(self):
    # creates the action server
    self._as = actionlib.SimpleActionServer("action_quiz", CustomActionMsgAction, self.goal_callback, False)
    self._as.start()
    self.ctrl_c = False
    self.rate = rospy.Rate(1)
    
  '''
  def publish_once_in_cmd_vel(self, cmd):
    """
    This is because publishing in topics sometimes fails teh first time you publish.
    In continuos publishing systems there is no big deal but in systems that publish only
    once it IS very important.
    """
    while not self.ctrl_c:
        connections = self._pub_cmd_vel.get_num_connections()
        if connections > 0:
            self._pub_cmd_vel.publish(cmd)
            rospy.loginfo("Publish in cmd_vel...")
            break
        else:
            self.rate.sleep()
    '''       
#too fancy for rn 

  def goal_callback(self, goal):
    # this callback is called when the action server is called.
    # this is the function that computes the Fibonacci sequence
    # and returns the sequence to the node that called the action server
    
    # helper variables
    r = rospy.Rate(1)
    success = True
    
    
    # define the different publishers and messages that will be used
    self._pub_takeoff = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
    self._takeoff_msg = Empty()
    self._pub_land = rospy.Publisher('/drone/land', Empty, queue_size=1)
    self._land_msg = Empty()

     # Get the goal word: UP or DOWN
    takeoff_or_land = goal.goal

    i = 0
    #xrange
    for i in range(0, 4):

      # check that preempt (cancelation) has not been requested by the action client
      if self._as.is_preempt_requested():
        rospy.loginfo('The goal has been cancelled/preempted')
        # the following line, sets the client in preempted state (goal cancelled)
        self._as.set_preempted()
        success = False
        break

      # Logic that makes the robot move UP or DOWN
      if takeoff_or_land == 'TAKEOFF':

        self._pub_takeoff.publish(self._takeoff_msg) # publish this as topic
        self._feedback.feedback = 'Taking Off...' # adding this to a feedback 
        self._as.publish_feedback(self._feedback) # publishing the feedback 

      if takeoff_or_land == 'LAND':

        self._pub_land.publish(self._land_msg)
        self._feedback.feedback = 'Landing...'
        self._as.publish_feedback(self._feedback)

      # the sequence is computed at 1 Hz frequency
      r.sleep()

    # at this point, either the goal has been achieved (success==true)
    # or the client preempted the goal (success==false)
    # If success, then we publish the final result
    # If not success, we do not publish anything in the result
    if success:
      self._result = Empty()
      self._as.set_succeeded(self._result)


if __name__ == '__main__':
  rospy.init_node('action_custom_msg')
  CustomActionMsgClass()
  rospy.spin()