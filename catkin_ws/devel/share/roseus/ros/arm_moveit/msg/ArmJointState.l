;; Auto-generated. Do not edit!


(when (boundp 'arm_moveit::ArmJointState)
  (if (not (find-package "ARM_MOVEIT"))
    (make-package "ARM_MOVEIT"))
  (shadow 'ArmJointState (find-package "ARM_MOVEIT")))
(unless (find-package "ARM_MOVEIT::ARMJOINTSTATE")
  (make-package "ARM_MOVEIT::ARMJOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ArmJointState.msg.html


(defclass arm_moveit::ArmJointState
  :super ros::object
  :slots (_position1 _position2 _position3 _position4 ))

(defmethod arm_moveit::ArmJointState
  (:init
   (&key
    ((:position1 __position1) 0.0)
    ((:position2 __position2) 0.0)
    ((:position3 __position3) 0.0)
    ((:position4 __position4) 0.0)
    )
   (send-super :init)
   (setq _position1 (float __position1))
   (setq _position2 (float __position2))
   (setq _position3 (float __position3))
   (setq _position4 (float __position4))
   self)
  (:position1
   (&optional __position1)
   (if __position1 (setq _position1 __position1)) _position1)
  (:position2
   (&optional __position2)
   (if __position2 (setq _position2 __position2)) _position2)
  (:position3
   (&optional __position3)
   (if __position3 (setq _position3 __position3)) _position3)
  (:position4
   (&optional __position4)
   (if __position4 (setq _position4 __position4)) _position4)
  (:serialization-length
   ()
   (+
    ;; float32 _position1
    4
    ;; float32 _position2
    4
    ;; float32 _position3
    4
    ;; float32 _position4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _position1
       (sys::poke _position1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position2
       (sys::poke _position2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position3
       (sys::poke _position3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position4
       (sys::poke _position4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _position1
     (setq _position1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position2
     (setq _position2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position3
     (setq _position3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position4
     (setq _position4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm_moveit::ArmJointState :md5sum-) "3610f49fa52e93e9f1d1fa85ce263838")
(setf (get arm_moveit::ArmJointState :datatype-) "arm_moveit/ArmJointState")
(setf (get arm_moveit::ArmJointState :definition-)
      "float32 position1
float32 position2
float32 position3
float32 position4

")



(provide :arm_moveit/ArmJointState "3610f49fa52e93e9f1d1fa85ce263838")


