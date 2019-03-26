; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IODeviceConfiguration.msg.html

(cl:defclass <IODeviceConfiguration> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (device
    :reader device
    :initarg :device
    :type intera_core_msgs-msg:IOComponentConfiguration
    :initform (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration))
   (ports
    :reader ports
    :initarg :ports
    :type (cl:vector intera_core_msgs-msg:IOComponentConfiguration)
   :initform (cl:make-array 0 :element-type 'intera_core_msgs-msg:IOComponentConfiguration :initial-element (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration)))
   (signals
    :reader signals
    :initarg :signals
    :type (cl:vector intera_core_msgs-msg:IOComponentConfiguration)
   :initform (cl:make-array 0 :element-type 'intera_core_msgs-msg:IOComponentConfiguration :initial-element (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration))))
)

(cl:defclass IODeviceConfiguration (<IODeviceConfiguration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IODeviceConfiguration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IODeviceConfiguration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IODeviceConfiguration> is deprecated: use intera_core_msgs-msg:IODeviceConfiguration instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <IODeviceConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:time-val is deprecated.  Use intera_core_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'device-val :lambda-list '(m))
(cl:defmethod device-val ((m <IODeviceConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:device-val is deprecated.  Use intera_core_msgs-msg:device instead.")
  (device m))

(cl:ensure-generic-function 'ports-val :lambda-list '(m))
(cl:defmethod ports-val ((m <IODeviceConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:ports-val is deprecated.  Use intera_core_msgs-msg:ports instead.")
  (ports m))

(cl:ensure-generic-function 'signals-val :lambda-list '(m))
(cl:defmethod signals-val ((m <IODeviceConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:signals-val is deprecated.  Use intera_core_msgs-msg:signals instead.")
  (signals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IODeviceConfiguration>) ostream)
  "Serializes a message object of type '<IODeviceConfiguration>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'device) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ports))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ports))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'signals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IODeviceConfiguration>) istream)
  "Deserializes a message object of type '<IODeviceConfiguration>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'device) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ports) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ports)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'intera_core_msgs-msg:IOComponentConfiguration))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IODeviceConfiguration>)))
  "Returns string type for a message object of type '<IODeviceConfiguration>"
  "intera_core_msgs/IODeviceConfiguration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IODeviceConfiguration)))
  "Returns string type for a message object of type 'IODeviceConfiguration"
  "intera_core_msgs/IODeviceConfiguration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IODeviceConfiguration>)))
  "Returns md5sum for a message object of type '<IODeviceConfiguration>"
  "1794fdd703d897a548b2237b9d661697")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IODeviceConfiguration)))
  "Returns md5sum for a message object of type 'IODeviceConfiguration"
  "1794fdd703d897a548b2237b9d661697")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IODeviceConfiguration>)))
  "Returns full string definition for message of type '<IODeviceConfiguration>"
  (cl:format cl:nil "## IO Device Configuration~%time time                             # configuration command timestamp~%IOComponentConfiguration   device     # device configuration data~%IOComponentConfiguration[] ports      # Ports~%IOComponentConfiguration[] signals    # Signals~%~%================================================================================~%MSG: intera_core_msgs/IOComponentConfiguration~%## IO Component configuration data~%string name                  # device name~%string config                # device-specific JSON configuration data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IODeviceConfiguration)))
  "Returns full string definition for message of type 'IODeviceConfiguration"
  (cl:format cl:nil "## IO Device Configuration~%time time                             # configuration command timestamp~%IOComponentConfiguration   device     # device configuration data~%IOComponentConfiguration[] ports      # Ports~%IOComponentConfiguration[] signals    # Signals~%~%================================================================================~%MSG: intera_core_msgs/IOComponentConfiguration~%## IO Component configuration data~%string name                  # device name~%string config                # device-specific JSON configuration data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IODeviceConfiguration>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'device))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ports) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IODeviceConfiguration>))
  "Converts a ROS message object to a list"
  (cl:list 'IODeviceConfiguration
    (cl:cons ':time (time msg))
    (cl:cons ':device (device msg))
    (cl:cons ':ports (ports msg))
    (cl:cons ':signals (signals msg))
))
