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

class time_serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_service_mode = null;
      this.ntp_ip = null;
    }
    else {
      if (initObj.hasOwnProperty('time_service_mode')) {
        this.time_service_mode = initObj.time_service_mode
      }
      else {
        this.time_service_mode = '';
      }
      if (initObj.hasOwnProperty('ntp_ip')) {
        this.ntp_ip = initObj.ntp_ip
      }
      else {
        this.ntp_ip = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type time_serviceRequest
    // Serialize message field [time_service_mode]
    bufferOffset = _serializer.string(obj.time_service_mode, buffer, bufferOffset);
    // Serialize message field [ntp_ip]
    bufferOffset = _serializer.string(obj.ntp_ip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type time_serviceRequest
    let len;
    let data = new time_serviceRequest(null);
    // Deserialize message field [time_service_mode]
    data.time_service_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ntp_ip]
    data.ntp_ip = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.time_service_mode);
    length += _getByteLength(object.ntp_ip);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lslidar_cx_driver/time_serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21fd24a4b0ea7145fae6e14eb88bf1a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string time_service_mode
    string ntp_ip
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new time_serviceRequest(null);
    if (msg.time_service_mode !== undefined) {
      resolved.time_service_mode = msg.time_service_mode;
    }
    else {
      resolved.time_service_mode = ''
    }

    if (msg.ntp_ip !== undefined) {
      resolved.ntp_ip = msg.ntp_ip;
    }
    else {
      resolved.ntp_ip = ''
    }

    return resolved;
    }
};

class time_serviceResponse {
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
    // Serializes a message object of type time_serviceResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type time_serviceResponse
    let len;
    let data = new time_serviceResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lslidar_cx_driver/time_serviceResponse';
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
    const resolved = new time_serviceResponse(null);
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
  Request: time_serviceRequest,
  Response: time_serviceResponse,
  md5sum() { return 'd498f138be97cecf5a5202b322fd6067'; },
  datatype() { return 'lslidar_cx_driver/time_service'; }
};
