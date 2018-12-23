; Auto-generated. Do not edit!


(cl:in-package arm_moveit-msg)


;//! \htmlinclude ArmJointState.msg.html

(cl:defclass <ArmJointState> (roslisp-msg-protocol:ros-message)
  ((position1
    :reader position1
    :initarg :position1
    :type cl:float
    :initform 0.0)
   (position2
    :reader position2
    :initarg :position2
    :type cl:float
    :initform 0.0)
   (position3
    :reader position3
    :initarg :position3
    :type cl:float
    :initform 0.0)
   (position4
    :reader position4
    :initarg :position4
    :type cl:float
    :initform 0.0))
)

(cl:defclass ArmJointState (<ArmJointState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmJointState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmJointState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_moveit-msg:<ArmJointState> is deprecated: use arm_moveit-msg:ArmJointState instead.")))

(cl:ensure-generic-function 'position1-val :lambda-list '(m))
(cl:defmethod position1-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_moveit-msg:position1-val is deprecated.  Use arm_moveit-msg:position1 instead.")
  (position1 m))

(cl:ensure-generic-function 'position2-val :lambda-list '(m))
(cl:defmethod position2-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_moveit-msg:position2-val is deprecated.  Use arm_moveit-msg:position2 instead.")
  (position2 m))

(cl:ensure-generic-function 'position3-val :lambda-list '(m))
(cl:defmethod position3-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_moveit-msg:position3-val is deprecated.  Use arm_moveit-msg:position3 instead.")
  (position3 m))

(cl:ensure-generic-function 'position4-val :lambda-list '(m))
(cl:defmethod position4-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_moveit-msg:position4-val is deprecated.  Use arm_moveit-msg:position4 instead.")
  (position4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmJointState>) ostream)
  "Serializes a message object of type '<ArmJointState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmJointState>) istream)
  "Deserializes a message object of type '<ArmJointState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmJointState>)))
  "Returns string type for a message object of type '<ArmJointState>"
  "arm_moveit/ArmJointState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmJointState)))
  "Returns string type for a message object of type 'ArmJointState"
  "arm_moveit/ArmJointState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmJointState>)))
  "Returns md5sum for a message object of type '<ArmJointState>"
  "3610f49fa52e93e9f1d1fa85ce263838")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmJointState)))
  "Returns md5sum for a message object of type 'ArmJointState"
  "3610f49fa52e93e9f1d1fa85ce263838")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmJointState>)))
  "Returns full string definition for message of type '<ArmJointState>"
  (cl:format cl:nil "float32 position1~%float32 position2~%float32 position3~%float32 position4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmJointState)))
  "Returns full string definition for message of type 'ArmJointState"
  (cl:format cl:nil "float32 position1~%float32 position2~%float32 position3~%float32 position4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmJointState>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmJointState>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmJointState
    (cl:cons ':position1 (position1 msg))
    (cl:cons ':position2 (position2 msg))
    (cl:cons ':position3 (position3 msg))
    (cl:cons ':position4 (position4 msg))
))
