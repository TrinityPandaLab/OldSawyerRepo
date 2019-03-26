; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude IOStatus.msg.html

(cl:defclass <IOStatus> (roslisp-msg-protocol:ros-message)
  ((tag
    :reader tag
    :initarg :tag
    :type cl:string
    :initform "")
   (key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass IOStatus (<IOStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<IOStatus> is deprecated: use intera_core_msgs-msg:IOStatus instead.")))

(cl:ensure-generic-function 'tag-val :lambda-list '(m))
(cl:defmethod tag-val ((m <IOStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:tag-val is deprecated.  Use intera_core_msgs-msg:tag instead.")
  (tag m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <IOStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:key-val is deprecated.  Use intera_core_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <IOStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:msg-val is deprecated.  Use intera_core_msgs-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IOStatus>)))
    "Constants for message type '<IOStatus>"
  '((:DOWN . down)
    (:READY . ready)
    (:BUSY . busy)
    (:UNREADY . unready)
    (:ERROR . error))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IOStatus)))
    "Constants for message type 'IOStatus"
  '((:DOWN . down)
    (:READY . ready)
    (:BUSY . busy)
    (:UNREADY . unready)
    (:ERROR . error))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOStatus>) ostream)
  "Serializes a message object of type '<IOStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOStatus>) istream)
  "Deserializes a message object of type '<IOStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOStatus>)))
  "Returns string type for a message object of type '<IOStatus>"
  "intera_core_msgs/IOStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOStatus)))
  "Returns string type for a message object of type 'IOStatus"
  "intera_core_msgs/IOStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOStatus>)))
  "Returns md5sum for a message object of type '<IOStatus>"
  "9bf5b1607227eec6d965f9c3a59c0650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOStatus)))
  "Returns md5sum for a message object of type 'IOStatus"
  "9bf5b1607227eec6d965f9c3a59c0650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOStatus>)))
  "Returns full string definition for message of type '<IOStatus>"
  (cl:format cl:nil "## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string key             # status key~%# The \"key\" is a descriptive path starting with \"io\" and ending with~%# the status tag.  It should uniquely identify the status within a~%# device, so it can be used to lookup information such as localized~%# messages and behaviors. Examples:~%#   \"io/ready\"~%#   \"io/modbus_tcp/disconnected/error\"~%#~%string msg             # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOStatus)))
  "Returns full string definition for message of type 'IOStatus"
  (cl:format cl:nil "## IO status data~%#~%string tag             # one of the values listed below~%#   down     Inoperative, not fully instantiated~%#   ready    OK, fully operational~%#   busy     OK, not ready to output data; input data value may be stale~%#   unready  OK, not operational; data is invalid~%#   error    Error, not operational~%string DOWN      = down~%string READY     = ready~%string BUSY      = busy~%string UNREADY   = unready~%string ERROR     = error~%#~%string key             # status key~%# The \"key\" is a descriptive path starting with \"io\" and ending with~%# the status tag.  It should uniquely identify the status within a~%# device, so it can be used to lookup information such as localized~%# messages and behaviors. Examples:~%#   \"io/ready\"~%#   \"io/modbus_tcp/disconnected/error\"~%#~%string msg             # optional additional status detail~%#~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag))
     4 (cl:length (cl:slot-value msg 'key))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'IOStatus
    (cl:cons ':tag (tag msg))
    (cl:cons ':key (key msg))
    (cl:cons ':msg (msg msg))
))
