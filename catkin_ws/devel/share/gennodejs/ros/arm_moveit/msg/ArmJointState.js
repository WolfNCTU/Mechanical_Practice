// Auto-generated. Do not edit!

// (in-package arm_moveit.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ArmJointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position1 = null;
      this.position2 = null;
      this.position3 = null;
      this.position4 = null;
    }
    else {
      if (initObj.hasOwnProperty('position1')) {
        this.position1 = initObj.position1
      }
      else {
        this.position1 = 0.0;
      }
      if (initObj.hasOwnProperty('position2')) {
        this.position2 = initObj.position2
      }
      else {
        this.position2 = 0.0;
      }
      if (initObj.hasOwnProperty('position3')) {
        this.position3 = initObj.position3
      }
      else {
        this.position3 = 0.0;
      }
      if (initObj.hasOwnProperty('position4')) {
        this.position4 = initObj.position4
      }
      else {
        this.position4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmJointState
    // Serialize message field [position1]
    bufferOffset = _serializer.float32(obj.position1, buffer, bufferOffset);
    // Serialize message field [position2]
    bufferOffset = _serializer.float32(obj.position2, buffer, bufferOffset);
    // Serialize message field [position3]
    bufferOffset = _serializer.float32(obj.position3, buffer, bufferOffset);
    // Serialize message field [position4]
    bufferOffset = _serializer.float32(obj.position4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmJointState
    let len;
    let data = new ArmJointState(null);
    // Deserialize message field [position1]
    data.position1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position2]
    data.position2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position3]
    data.position3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position4]
    data.position4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_moveit/ArmJointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3610f49fa52e93e9f1d1fa85ce263838';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 position1
    float32 position2
    float32 position3
    float32 position4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmJointState(null);
    if (msg.position1 !== undefined) {
      resolved.position1 = msg.position1;
    }
    else {
      resolved.position1 = 0.0
    }

    if (msg.position2 !== undefined) {
      resolved.position2 = msg.position2;
    }
    else {
      resolved.position2 = 0.0
    }

    if (msg.position3 !== undefined) {
      resolved.position3 = msg.position3;
    }
    else {
      resolved.position3 = 0.0
    }

    if (msg.position4 !== undefined) {
      resolved.position4 = msg.position4;
    }
    else {
      resolved.position4 = 0.0
    }

    return resolved;
    }
};

module.exports = ArmJointState;
