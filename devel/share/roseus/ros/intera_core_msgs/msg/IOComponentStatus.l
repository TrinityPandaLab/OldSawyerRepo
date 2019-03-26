;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IOComponentStatus)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IOComponentStatus (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IOCOMPONENTSTATUS")
  (make-package "INTERA_CORE_MSGS::IOCOMPONENTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude IOComponentStatus.msg.html


(defclass intera_core_msgs::IOComponentStatus
  :super ros::object
  :slots (_name _status ))

(defmethod intera_core_msgs::IOComponentStatus
  (:init
   (&key
    ((:name __name) "")
    ((:status __status) (instance intera_core_msgs::IOStatus :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _status __status)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; intera_core_msgs/IOStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; intera_core_msgs/IOStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; intera_core_msgs/IOStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get intera_core_msgs::IOComponentStatus :md5sum-) "3e51327b8ffbe9adb8af23639e9819f9")
(setf (get intera_core_msgs::IOComponentStatus :datatype-) "intera_core_msgs/IOComponentStatus")
(setf (get intera_core_msgs::IOComponentStatus :definition-)
      "## IO Component status data
string name            # component name
IOStatus status        # component status
#



================================================================================
MSG: intera_core_msgs/IOStatus
## IO status data
#
string tag             # one of the values listed below
#   down     Inoperative, not fully instantiated
#   ready    OK, fully operational
#   busy     OK, not ready to output data; input data value may be stale
#   unready  OK, not operational; data is invalid
#   error    Error, not operational
string DOWN      = down
string READY     = ready
string BUSY      = busy
string UNREADY   = unready
string ERROR     = error
#
string key             # status key
# The \"key\" is a descriptive path starting with \"io\" and ending with
# the status tag.  It should uniquely identify the status within a
# device, so it can be used to lookup information such as localized
# messages and behaviors. Examples:
#   \"io/ready\"
#   \"io/modbus_tcp/disconnected/error\"
#
string msg             # optional additional status detail
#

")



(provide :intera_core_msgs/IOComponentStatus "3e51327b8ffbe9adb8af23639e9819f9")


