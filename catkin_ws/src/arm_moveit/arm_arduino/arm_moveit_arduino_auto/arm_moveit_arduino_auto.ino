/*
 * rosserial Servo Control Example
 *
 * This sketch demonstrates the control of hobby R/C servos
 * using ROS and the arduiono
 * 
 * For the full tutorial write up, visit
 * www.ros.org/wiki/rosserial_arduino_demos
 *
 * For more information on the Arduino Servo Library
 * Checkout :
 * http://www.arduino.cc/en/Reference/Servo
 *
 * Last edited: 2018.12.19
 * Author: Wolf Chen
 */

#if defined(ARDUINO) && ARDUINO >= 100
  #include "Arduino.h"
#else
  #include <WProgram.h>
#endif

#include <arm_moveit/ArmJointState.h>
#include <Servo.h>
#include <std_msgs/Bool.h>
#include <math.h>
#include <ros.h>
#include <std_msgs/Int16.h>

int joint_angle[4];
int joint_status = 0;

ros::NodeHandle  nh;
std_msgs::Int16 msg;
ros::Publisher angles("joint_angles_feedback", &msg);

Servo base;
Servo shoulder;
Servo elbow;
Servo wrist;

void arm_cb(const arm_moveit::ArmJointState& arm_angles){
  joint_status = 1;
  joint_angle[0] = arm_angles.position1;
  joint_angle[2] = arm_angles.position2;
  joint_angle[1] = arm_angles.position3;
  joint_angle[3] = arm_angles.position4;
}

ros::Subscriber<arm_moveit::ArmJointState> arm_sub("joint_angles", arm_cb);

void setup(){
  joint_status = 1;

  nh.initNode();
  nh.subscribe(arm_sub);
  nh.advertise(angles);

  base.attach(2, 500, 2500);     // base joint
  shoulder.attach(3, 900, 2100); // shoulder joint
  elbow.attach(4, 600, 2400);    // elbow joint
  wrist.attach(6, 600, 2400);    // wrist joint
}

void loop(){
  if(joint_status == 1){
    int positions[4];

    for(int i = 0; i < 4; i++){
      positions[i] = joint_angle[i];
    }

    base.write(positions[0]);
    shoulder.write(positions[1]);
    elbow.write(positions[2]);
    wrist.write(positions[3]);

    msg.data = positions[3];
    angles.publish(&msg);
    nh.spinOnce();
  }
  joint_status = 0;

  nh.spinOnce();
  delay(1);
}
