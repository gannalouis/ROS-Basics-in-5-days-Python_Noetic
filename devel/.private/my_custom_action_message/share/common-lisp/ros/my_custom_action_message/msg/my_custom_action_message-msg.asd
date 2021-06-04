
(cl:in-package :asdf)

(defsystem "my_custom_action_message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CustomAction" :depends-on ("_package_CustomAction"))
    (:file "_package_CustomAction" :depends-on ("_package"))
    (:file "CustomActionFeedback" :depends-on ("_package_CustomActionFeedback"))
    (:file "_package_CustomActionFeedback" :depends-on ("_package"))
    (:file "CustomActionGoal" :depends-on ("_package_CustomActionGoal"))
    (:file "_package_CustomActionGoal" :depends-on ("_package"))
    (:file "CustomActionResult" :depends-on ("_package_CustomActionResult"))
    (:file "_package_CustomActionResult" :depends-on ("_package"))
    (:file "CustomFeedback" :depends-on ("_package_CustomFeedback"))
    (:file "_package_CustomFeedback" :depends-on ("_package"))
    (:file "CustomGoal" :depends-on ("_package_CustomGoal"))
    (:file "_package_CustomGoal" :depends-on ("_package"))
    (:file "CustomResult" :depends-on ("_package_CustomResult"))
    (:file "_package_CustomResult" :depends-on ("_package"))
  ))