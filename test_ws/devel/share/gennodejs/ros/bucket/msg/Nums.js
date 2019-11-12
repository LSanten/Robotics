// Auto-generated. Do not edit!

// (in-package bucket.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Nums {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num1 = null;
      this.num2 = null;
      this.num3 = null;
      this.num4 = null;
    }
    else {
      if (initObj.hasOwnProperty('num1')) {
        this.num1 = initObj.num1
      }
      else {
        this.num1 = 0;
      }
      if (initObj.hasOwnProperty('num2')) {
        this.num2 = initObj.num2
      }
      else {
        this.num2 = 0;
      }
      if (initObj.hasOwnProperty('num3')) {
        this.num3 = initObj.num3
      }
      else {
        this.num3 = 0;
      }
      if (initObj.hasOwnProperty('num4')) {
        this.num4 = initObj.num4
      }
      else {
        this.num4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Nums
    // Serialize message field [num1]
    bufferOffset = _serializer.uint32(obj.num1, buffer, bufferOffset);
    // Serialize message field [num2]
    bufferOffset = _serializer.uint32(obj.num2, buffer, bufferOffset);
    // Serialize message field [num3]
    bufferOffset = _serializer.uint32(obj.num3, buffer, bufferOffset);
    // Serialize message field [num4]
    bufferOffset = _serializer.uint32(obj.num4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Nums
    let len;
    let data = new Nums(null);
    // Deserialize message field [num1]
    data.num1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num2]
    data.num2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num3]
    data.num3 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num4]
    data.num4 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bucket/Nums';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6d78ecf7b511642686f88da1fa1bdaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 num1
    uint32 num2
    uint32 num3
    uint32 num4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Nums(null);
    if (msg.num1 !== undefined) {
      resolved.num1 = msg.num1;
    }
    else {
      resolved.num1 = 0
    }

    if (msg.num2 !== undefined) {
      resolved.num2 = msg.num2;
    }
    else {
      resolved.num2 = 0
    }

    if (msg.num3 !== undefined) {
      resolved.num3 = msg.num3;
    }
    else {
      resolved.num3 = 0
    }

    if (msg.num4 !== undefined) {
      resolved.num4 = msg.num4;
    }
    else {
      resolved.num4 = 0
    }

    return resolved;
    }
};

module.exports = Nums;
