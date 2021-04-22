;; Auto-generated. Do not edit!


(when (boundp 'exercise_33::test)
  (if (not (find-package "EXERCISE_33"))
    (make-package "EXERCISE_33"))
  (shadow 'test (find-package "EXERCISE_33")))
(unless (find-package "EXERCISE_33::TEST")
  (make-package "EXERCISE_33::TEST"))

(in-package "ROS")
;;//! \htmlinclude test.msg.html


(defclass exercise_33::test
  :super ros::object
  :slots (_tyears _tmonths _tdays ))

(defmethod exercise_33::test
  (:init
   (&key
    ((:tyears __tyears) 0.0)
    ((:tmonths __tmonths) 0.0)
    ((:tdays __tdays) 0.0)
    )
   (send-super :init)
   (setq _tyears (float __tyears))
   (setq _tmonths (float __tmonths))
   (setq _tdays (float __tdays))
   self)
  (:tyears
   (&optional __tyears)
   (if __tyears (setq _tyears __tyears)) _tyears)
  (:tmonths
   (&optional __tmonths)
   (if __tmonths (setq _tmonths __tmonths)) _tmonths)
  (:tdays
   (&optional __tdays)
   (if __tdays (setq _tdays __tdays)) _tdays)
  (:serialization-length
   ()
   (+
    ;; float32 _tyears
    4
    ;; float32 _tmonths
    4
    ;; float32 _tdays
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tyears
       (sys::poke _tyears (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tmonths
       (sys::poke _tmonths (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tdays
       (sys::poke _tdays (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tyears
     (setq _tyears (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tmonths
     (setq _tmonths (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tdays
     (setq _tdays (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get exercise_33::test :md5sum-) "1cf64740f1c879974d6e5e289830ab0f")
(setf (get exercise_33::test :datatype-) "exercise_33/test")
(setf (get exercise_33::test :definition-)
      "float32 tyears
float32 tmonths
float32 tdays
")



(provide :exercise_33/test "1cf64740f1c879974d6e5e289830ab0f")


