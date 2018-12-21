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

#include <Servo.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <math.h>
#include <ros.h>
#include <std_msgs/Float32.h>

int joint_angle[4];
int joint_status = 0;

ros::NodeHandle  nh;
std_msgs::Float32 msg;
ros::Publisher angles("joint_angles_feedback", &msg);

Servo base;
Servo shoulder;
Servo elbow;
Servo wrist;

void arm_cb(const /move_group/fake_controller_joint_states& arm_angles){
  joint_status = 1;
  joint_angle[0] = arm_angles.position1;
  joint_angle[1] = arm_angles.position2;
  joint_angle[2] = arm_angles.position3;
  joint_angle[3] = arm_angles.position4;
}

ros::Subscriber<std_msgs::Float32> arm_sub("/move_group/fake_controller_joint_states", arm_cb);

void setup(){
  Serial.begin(115200);

  nh.initNode();
  nh.subscribe(arm_sub);
  nh.advertise(angles);

  base.attach(2, 500, 2500);     // base joint
  shoulder.attach(3, 900, 2100); // shoulder joint
  elbow.attach(4, 600, 2400);    // elbow joint
  wrist.attach(6, 600, 2400);    // wrist joint
}

void loop(){
  if(joint_state == 1){
    long positions[4];

    for(int i = 0; i < 4; i++){
      positions[i] = 90 + joint_angle[i] * 180 / M_PI;
    }

    base.write(positions[0]);
    shoulder.write(positions[1]);
    elbow.write(positions[2]);
    wrist.write(positions[3]);

    msg.data = positions[4];
    angles.publish(&msg);
    nh.spinOnce();
  }
  joint_status = 0;

  nh.spinOnce();
  delay(500);
}
