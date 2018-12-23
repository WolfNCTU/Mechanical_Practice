
(cl:in-package :asdf)

(defsystem "arm_moveit-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ArmJointState" :depends-on ("_package_ArmJointState"))
    (:file "_package_ArmJointState" :depends-on ("_package"))
    (:file "ArmJointState2" :depends-on ("_package_ArmJointState2"))
    (:file "_package_ArmJointState2" :depends-on ("_package"))
  ))