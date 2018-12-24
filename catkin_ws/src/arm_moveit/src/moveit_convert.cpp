#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include "arm_moveit/ArmJointState.h"
#include "math.h"

arm_moveit::ArmJointState arm_angles;

int joint_status = 0;
double arm_angle[4] = {0, 0, 0, 0};
double init_angle[4] = {0, 0, 0, 0};
int count = 0;

void cmd_cb(const sensor_msgs::JointState& cmd_arm){
  if(count == 0){
    arm_angle[0] = cmd_arm.position[0];
    arm_angle[1] = cmd_arm.position[1];
    arm_angle[2] = cmd_arm.position[2];
    arm_angle[3] = cmd_arm.position[3];

    init_angle[0] = cmd_arm.position[0];
    init_angle[1] = cmd_arm.position[1];
    init_angle[2] = cmd_arm.position[2];
    init_angle[3] = cmd_arm.position[3];
  }

  ROS_INFO_STREAM("Received /move_group/fake_controller_joint_states");

  arm_angles.position1 = (int)(100 - cmd_arm.position[0] * 180 / M_PI);
  arm_angles.position2 = (int)(87 - cmd_arm.position[1] * 180 / M_PI);
  arm_angles.position3 = (int)(88 - cmd_arm.position[2] * 180 / M_PI);
  arm_angles.position4 = (int)(97 - cmd_arm.position[3] * 180 / M_PI);

  if(count == 0){
    arm_angle[0] = cmd_arm.position[0];
    arm_angle[1] = cmd_arm.position[1];
    arm_angle[2] = cmd_arm.position[2];
    arm_angle[3] = cmd_arm.position[3];
  }

  joint_status = 1;
  count = 1;
}

int main(int argc, char **argv){
  ros::init(argc, argv, "arm_moveit");
  ros::NodeHandle nh;

  ros::Subscriber sub = nh.subscribe("/move_group/fake_controller_joint_states", 1000, cmd_cb);
  ros::Publisher pub = nh.advertise<arm_moveit::ArmJointState>("joint_angles", 50);

  ros::Rate loop_rate(20);

  while(ros::ok()){
    if(joint_status == 1){
      joint_status = 0;
      pub.publish(arm_angles);
      ROS_INFO_STREAM("Publish to /joint_angles");
    }
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
