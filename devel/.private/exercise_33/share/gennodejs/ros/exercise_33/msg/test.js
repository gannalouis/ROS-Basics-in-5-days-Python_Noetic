// Auto-generated. Do not edit!

// (in-package exercise_33.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class test {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tyears = null;
      this.tmonths = null;
      this.tdays = null;
    }
    else {
      if (initObj.hasOwnProperty('tyears')) {
        this.tyears = initObj.tyears
      }
      else {
        this.tyears = 0.0;
      }
      if (initObj.hasOwnProperty('tmonths')) {
        this.tmonths = initObj.tmonths
      }
      else {
        this.tmonths = 0.0;
      }
      if (initObj.hasOwnProperty('tdays')) {
        this.tdays = initObj.tdays
      }
      else {
        this.tdays = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type test
    // Serialize message field [tyears]
    bufferOffset = _serializer.float32(obj.tyears, buffer, bufferOffset);
    // Serialize message field [tmonths]
    bufferOffset = _serializer.float32(obj.tmonths, buffer, bufferOffset);
    // Serialize message field [tdays]
    bufferOffset = _serializer.float32(obj.tdays, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type test
    let len;
    let data = new test(null);
    // Deserialize message field [tyears]
    data.tyears = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tmonths]
    data.tmonths = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tdays]
    data.tdays = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exercise_33/test';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cf64740f1c879974d6e5e289830ab0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 tyears
    float32 tmonths
    float32 tdays
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new test(null);
    if (msg.tyears !== undefined) {
      resolved.tyears = msg.tyears;
    }
    else {
      resolved.tyears = 0.0
    }

    if (msg.tmonths !== undefined) {
      resolved.tmonths = msg.tmonths;
    }
    else {
      resolved.tmonths = 0.0
    }

    if (msg.tdays !== undefined) {
      resolved.tdays = msg.tdays;
    }
    else {
      resolved.tdays = 0.0
    }

    return resolved;
    }
};

module.exports = test;
