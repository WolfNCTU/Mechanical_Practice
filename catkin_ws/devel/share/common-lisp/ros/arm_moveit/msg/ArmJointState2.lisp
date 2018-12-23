; Auto-generated. Do not edit!


(cl:in-package arm_moveit-msg)


;//! \htmlinclude ArmJointState2.msg.html

(cl:defclass <ArmJointState2> (roslisp-msg-protocol:ros-message)
  ((position1
    :reader position1
    :initarg :position1
    :type cl:fixnum
    :initform 0)
   (position2
    :reader position2
    :initarg :position2
    :type cl:fixnum
    :initform 0)
   (position3
    :reader position3
    :initarg :position3
    :type cl:fixnum
    :initform 0)
   (position4
    :reader position4
    :initarg :position4
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ArmJointState2 (<ArmJointState2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmJointState2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmJointState2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_moveit-msg:<ArmJointState2> is deprecated: use arm_moveit-msg:ArmJointState2 instead.")))

(cl:ensure-generic-function 'position1-val :lambda-list '(m))
(cl:defmethod position1-val ((m <ArmJointState2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_moveit-msg:position1-val is deprecated.  Use arm_moveit-msg:position1 instead.")
  (position1 m))

(cl:ensure-generic-function 'position2-val :lambda-list '(m))
(cl:defmethod position2-val ((m <ArmJointState2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_moveit-msg:position2-val is deprecated.  Use arm_moveit-msg:position2 instead.")
  (position2 m))

(cl:ensure-generic-function 'position3-val :lambda-list '(m))
(cl:defmethod position3-val ((m <ArmJointState2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_moveit-msg:position3-val is deprecated.  Use arm_moveit-msg:position3 instead.")
  (position3 m))

(cl:ensure-generic-function 'position4-val :lambda-list '(m))
(cl:defmethod position4-val ((m <ArmJointState2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_moveit-msg:position4-val is deprecated.  Use arm_moveit-msg:position4 instead.")
  (position4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmJointState2>) ostream)
  "Serializes a message object of type '<ArmJointState2>"
  (cl:let* ((signed (cl:slot-value msg 'position1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmJointState2>) istream)
  "Deserializes a message object of type '<ArmJointState2>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position3) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position4) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmJointState2>)))
  "Returns string type for a message object of type '<ArmJointState2>"
  "arm_moveit/ArmJointState2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmJointState2)))
  "Returns string type for a message object of type 'ArmJointState2"
  "arm_moveit/ArmJointState2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmJointState2>)))
  "Returns md5sum for a message object of type '<ArmJointState2>"
  "b25fb6f563fe7748caa50319ae012a0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmJointState2)))
  "Returns md5sum for a message object of type 'ArmJointState2"
  "b25fb6f563fe7748caa50319ae012a0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmJointState2>)))
  "Returns full string definition for message of type '<ArmJointState2>"
  (cl:format cl:nil "int16 position1~%int16 position2~%int16 position3~%int16 position4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmJointState2)))
  "Returns full string definition for message of type 'ArmJointState2"
  (cl:format cl:nil "int16 position1~%int16 position2~%int16 position3~%int16 position4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmJointState2>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmJointState2>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmJointState2
    (cl:cons ':position1 (position1 msg))
    (cl:cons ':position2 (position2 msg))
    (cl:cons ':position3 (position3 msg))
    (cl:cons ':position4 (position4 msg))
))
