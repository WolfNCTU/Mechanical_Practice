#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include "arm_moveit/ArmJointState.h"
#include "math.h"

arm_moveit::ArmJointState arm_angles;
arm_moveit::ArmJointState total;

int joint_status = 0;
double prev_angle[4] = {90, 90, 90, 90};
double init_angle[4] = {0, 0, 0, 0};
int count = 0;

void cmd_cb(const sensor_msgs::JointState& cmd_arm){
  if(count == 0){
    prev_angle[0] = cmd_arm.position[0];
    prev_angle[1] = cmd_arm.position[1];
    prev_angle[2] = cmd_arm.position[1];
    prev_angle[3] = cmd_arm.position[1];

    init_angle[0] = cmd_arm.position[0];
    init_angle[1] = cmd_arm.position[1];
    init_angle[2] = cmd_arm.position[2];
    init_angle[3] = cmd_arm.position[3];
  }

  ROS_INFO_STREAM("Received /move_group/fake_controller_joint_states");

  arm_angles.position1 = (int)(90 + cmd_arm.position[0] * 180 / M_PI);
  arm_angles.position2 = (int)(90 + cmd_arm.position[1] * 180 / M_PI);
  arm_angles.position3 = (int)(90 + cmd_arm.position[2] * 180 / M_PI);
  arm_angles.position4 = (int)(90 + cmd_arm.position[3] * 180 / M_PI);

  if(count == 0){
    prev_angle[0] = cmd_arm.position[0];
    prev_angle[1] = cmd_arm.position[1];
    prev_angle[2] = cmd_arm.position[1];
    prev_angle[3] = cmd_arm.position[1];
  }

  
}
