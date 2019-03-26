; Auto-generated. Do not edit!


(cl:in-package intera_core_msgs-msg)


;//! \htmlinclude CalibrationCommandGoal.msg.html

(cl:defclass <CalibrationCommandGoal> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass CalibrationCommandGoal (<CalibrationCommandGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationCommandGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationCommandGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intera_core_msgs-msg:<CalibrationCommandGoal> is deprecated: use intera_core_msgs-msg:CalibrationCommandGoal instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CalibrationCommandGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intera_core_msgs-msg:command-val is deprecated.  Use intera_core_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CalibrationCommandGoal>)))
    "Constants for message type '<CalibrationCommandGoal>"
  '((:CALIBRATION_START . start)
    (:CALIBRATION_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CalibrationCommandGoal)))
    "Constants for message type 'CalibrationCommandGoal"
  '((:CALIBRATION_START . start)
    (:CALIBRATION_STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationCommandGoal>) ostream)
  "Serializes a message object of type '<CalibrationCommandGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationCommandGoal>) istream)
  "Deserializes a message object of type '<CalibrationCommandGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationCommandGoal>)))
  "Returns string type for a message object of type '<CalibrationCommandGoal>"
  "intera_core_msgs/CalibrationCommandGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationCommandGoal)))
  "Returns string type for a message object of type 'CalibrationCommandGoal"
  "intera_core_msgs/CalibrationCommandGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationCommandGoal>)))
  "Returns md5sum for a message object of type '<CalibrationCommandGoal>"
  "962c822c3313ec34ac61f8caca5d4248")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationCommandGoal)))
  "Returns md5sum for a message object of type 'CalibrationCommandGoal"
  "962c822c3313ec34ac61f8caca5d4248")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationCommandGoal>)))
  "Returns full string definition for message of type '<CalibrationCommandGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Engine command goal~%string command~%string CALIBRATION_START=start~%string CALIBRATION_STOP=stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationCommandGoal)))
  "Returns full string definition for message of type 'CalibrationCommandGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Engine command goal~%string command~%string CALIBRATION_START=start~%string CALIBRATION_STOP=stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationCommandGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationCommandGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationCommandGoal
    (cl:cons ':command (command msg))
))
