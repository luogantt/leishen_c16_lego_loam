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

class data_ipRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data_ip = null;
    }
    else {
      if (initObj.hasOwnProperty('data_ip')) {
        this.data_ip = initObj.data_ip
      }
      else {
        this.data_ip = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type data_ipRequest
    // Serialize message field [data_ip]
    bufferOffset = _serializer.string(obj.data_ip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data_ipRequest
    let len;
    let data = new data_ipRequest(null);
    // Deserialize message field [data_ip]
    data.data_ip = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.data_ip);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lslidar_cx_driver/data_ipRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '953b21ca6e56a0bc9ab469591cec5025';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string data_ip
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new data_ipRequest(null);
    if (msg.data_ip !== undefined) {
      resolved.data_ip = msg.data_ip;
    }
    else {
      resolved.data_ip = ''
    }

    return resolved;
    }
};

class data_ipResponse {
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
    // Serializes a message object of type data_ipResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data_ipResponse
    let len;
    let data = new data_ipResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lslidar_cx_driver/data_ipResponse';
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
    const resolved = new data_ipResponse(null);
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
  Request: data_ipRequest,
  Response: data_ipResponse,
  md5sum() { return '677773e65c76c0258fca5e834bbd1dcd'; },
  datatype() { return 'lslidar_cx_driver/data_ip'; }
};
