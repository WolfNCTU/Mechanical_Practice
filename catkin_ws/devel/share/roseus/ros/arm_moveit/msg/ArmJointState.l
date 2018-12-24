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
    ((:position1 __position1) 0)
    ((:position2 __position2) 0)
    ((:position3 __position3) 0)
    ((:position4 __position4) 0)
    )
   (send-super :init)
   (setq _position1 (round __position1))
   (setq _position2 (round __position2))
   (setq _position3 (round __position3))
   (setq _position4 (round __position4))
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
    ;; int16 _position1
    2
    ;; int16 _position2
    2
    ;; int16 _position3
    2
    ;; int16 _position4
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _position1
       (write-word _position1 s)
     ;; int16 _position2
       (write-word _position2 s)
     ;; int16 _position3
       (write-word _position3 s)
     ;; int16 _position4
       (write-word _position4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _position1
     (setq _position1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position2
     (setq _position2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position3
     (setq _position3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _position4
     (setq _position4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get arm_moveit::ArmJointState :md5sum-) "b25fb6f563fe7748caa50319ae012a0f")
(setf (get arm_moveit::ArmJointState :datatype-) "arm_moveit/ArmJointState")
(setf (get arm_moveit::ArmJointState :definition-)
      "int16 position1
int16 position2
int16 position3
int16 position4

")



(provide :arm_moveit/ArmJointState "b25fb6f563fe7748caa50319ae012a0f")


