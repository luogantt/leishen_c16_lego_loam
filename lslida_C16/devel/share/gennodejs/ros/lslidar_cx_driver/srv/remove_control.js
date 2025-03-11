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

class remove_controlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remove_control = null;
    }
    else {
      if (initObj.hasOwnProperty('remove_control')) {
        this.remove_control = initObj.remove_control
      }
      else {
        this.remove_control = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type remove_controlRequest
    // Serialize message field [remove_control]
    bufferOffset = _serializer.int32(obj.remove_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type remove_controlRequest
    let len;
    let data = new remove_controlRequest(null);
    // Deserialize message field [remove_control]
    data.remove_control = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lslidar_cx_driver/remove_controlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35697986514032f8003bd9ed91d5e759';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 remove_control
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new remove_controlRequest(null);
    if (msg.remove_control !== undefined) {
      resolved.remove_control = msg.remove_control;
    }
    else {
      resolved.remove_control = 0
    }

    return resolved;
    }
};

class remove_controlResponse {
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
    // Serializes a message object of type remove_controlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type remove_controlResponse
    let len;
    let data = new remove_controlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lslidar_cx_driver/remove_controlResponse';
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
    const resolved = new remove_controlResponse(null);
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
  Request: remove_controlRequest,
  Response: remove_controlResponse,
  md5sum() { return 'bdd6a9c7cf1a09e7831f35133efa0e8b'; },
  datatype() { return 'lslidar_cx_driver/remove_control'; }
};
