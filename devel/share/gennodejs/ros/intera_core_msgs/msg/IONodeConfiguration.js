// Auto-generated. Do not edit!

// (in-package intera_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IOComponentConfiguration = require('./IOComponentConfiguration.js');

//-----------------------------------------------------------

class IONodeConfiguration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.node = null;
      this.devices = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = new IOComponentConfiguration();
      }
      if (initObj.hasOwnProperty('devices')) {
        this.devices = initObj.devices
      }
      else {
        this.devices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IONodeConfiguration
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [node]
    bufferOffset = IOComponentConfiguration.serialize(obj.node, buffer, bufferOffset);
    // Serialize message field [devices]
    // Serialize the length for message field [devices]
    bufferOffset = _serializer.uint32(obj.devices.length, buffer, bufferOffset);
    obj.devices.forEach((val) => {
      bufferOffset = IOComponentConfiguration.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IONodeConfiguration
    let len;
    let data = new IONodeConfiguration(null);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [node]
    data.node = IOComponentConfiguration.deserialize(buffer, bufferOffset);
    // Deserialize message field [devices]
    // Deserialize array length for message field [devices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.devices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.devices[i] = IOComponentConfiguration.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += IOComponentConfiguration.getMessageSize(object.node);
    object.devices.forEach((val) => {
      length += IOComponentConfiguration.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/IONodeConfiguration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4876a14c772246335a974bf5f29be1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # IO Node Configuration
    time time                           # configuration command timestamp
    IOComponentConfiguration node       # IO Node configuration
    IOComponentConfiguration[] devices  # configuration of IO Devices in this node
    
    ================================================================================
    MSG: intera_core_msgs/IOComponentConfiguration
    ## IO Component configuration data
    string name                  # device name
    string config                # device-specific JSON configuration data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IONodeConfiguration(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.node !== undefined) {
      resolved.node = IOComponentConfiguration.Resolve(msg.node)
    }
    else {
      resolved.node = new IOComponentConfiguration()
    }

    if (msg.devices !== undefined) {
      resolved.devices = new Array(msg.devices.length);
      for (let i = 0; i < resolved.devices.length; ++i) {
        resolved.devices[i] = IOComponentConfiguration.Resolve(msg.devices[i]);
      }
    }
    else {
      resolved.devices = []
    }

    return resolved;
    }
};

module.exports = IONodeConfiguration;
