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

class IODeviceConfiguration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.device = null;
      this.ports = null;
      this.signals = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('device')) {
        this.device = initObj.device
      }
      else {
        this.device = new IOComponentConfiguration();
      }
      if (initObj.hasOwnProperty('ports')) {
        this.ports = initObj.ports
      }
      else {
        this.ports = [];
      }
      if (initObj.hasOwnProperty('signals')) {
        this.signals = initObj.signals
      }
      else {
        this.signals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IODeviceConfiguration
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [device]
    bufferOffset = IOComponentConfiguration.serialize(obj.device, buffer, bufferOffset);
    // Serialize message field [ports]
    // Serialize the length for message field [ports]
    bufferOffset = _serializer.uint32(obj.ports.length, buffer, bufferOffset);
    obj.ports.forEach((val) => {
      bufferOffset = IOComponentConfiguration.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [signals]
    // Serialize the length for message field [signals]
    bufferOffset = _serializer.uint32(obj.signals.length, buffer, bufferOffset);
    obj.signals.forEach((val) => {
      bufferOffset = IOComponentConfiguration.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IODeviceConfiguration
    let len;
    let data = new IODeviceConfiguration(null);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [device]
    data.device = IOComponentConfiguration.deserialize(buffer, bufferOffset);
    // Deserialize message field [ports]
    // Deserialize array length for message field [ports]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ports = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ports[i] = IOComponentConfiguration.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [signals]
    // Deserialize array length for message field [signals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.signals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.signals[i] = IOComponentConfiguration.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += IOComponentConfiguration.getMessageSize(object.device);
    object.ports.forEach((val) => {
      length += IOComponentConfiguration.getMessageSize(val);
    });
    object.signals.forEach((val) => {
      length += IOComponentConfiguration.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intera_core_msgs/IODeviceConfiguration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1794fdd703d897a548b2237b9d661697';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## IO Device Configuration
    time time                             # configuration command timestamp
    IOComponentConfiguration   device     # device configuration data
    IOComponentConfiguration[] ports      # Ports
    IOComponentConfiguration[] signals    # Signals
    
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
    const resolved = new IODeviceConfiguration(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.device !== undefined) {
      resolved.device = IOComponentConfiguration.Resolve(msg.device)
    }
    else {
      resolved.device = new IOComponentConfiguration()
    }

    if (msg.ports !== undefined) {
      resolved.ports = new Array(msg.ports.length);
      for (let i = 0; i < resolved.ports.length; ++i) {
        resolved.ports[i] = IOComponentConfiguration.Resolve(msg.ports[i]);
      }
    }
    else {
      resolved.ports = []
    }

    if (msg.signals !== undefined) {
      resolved.signals = new Array(msg.signals.length);
      for (let i = 0; i < resolved.signals.length; ++i) {
        resolved.signals[i] = IOComponentConfiguration.Resolve(msg.signals[i]);
      }
    }
    else {
      resolved.signals = []
    }

    return resolved;
    }
};

module.exports = IODeviceConfiguration;
