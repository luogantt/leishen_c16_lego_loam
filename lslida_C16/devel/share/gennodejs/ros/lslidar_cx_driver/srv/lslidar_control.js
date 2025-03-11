// Auto-generated. Do not edit!

// (in-package lslidar_cx_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class lslidar_controlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.laser_control = null;
    }
    else {
      if (initObj.hasOwnProperty('laser_control')) {
        this.laser_control = initObj.laser_control
      }
      else {
        this.laser_control = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lslidar_controlRequest
    // Serialize message field [laser_control]
    bufferOffset = _serializer.int32(obj.laser_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lslidar_controlRequest
    let len;
    let data = new lslidar_controlRequest(null);
    // Deserialize message field [laser_control]
    data.laser_control = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lslidar_cx_driver/lslidar_controlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd04c062893c0d3566fc8cfe1bb5bf133';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 laser_control
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lslidar_controlRequest(null);
    if (msg.laser_control !== undefined) {
      resolved.laser_control = msg.laser_control;
    }
    else {
      resolved.laser_control = 0
    }

    return resolved;
    }
};

class lslidar_controlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lslidar_controlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lslidar_controlResponse
    let len;
    let data = new lslidar_controlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lslidar_cx_driver/lslidar_controlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lslidar_controlResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: lslidar_controlRequest,
  Response: lslidar_controlResponse,
  md5sum() { return '1e4c56296cb3b5595cee64c461c3d984'; },
  datatype() { return 'lslidar_cx_driver/lslidar_control'; }
};
