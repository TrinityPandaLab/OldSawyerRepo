;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IOStatus)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IOStatus (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IOSTATUS")
  (make-package "INTERA_CORE_MSGS::IOSTATUS"))

(in-package "ROS")
;;//! \htmlinclude IOStatus.msg.html


(intern "*DOWN*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*DOWN* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*DOWN* "down")
(intern "*READY*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*READY* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*READY* "ready")
(intern "*BUSY*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*BUSY* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*BUSY* "busy")
(intern "*UNREADY*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*UNREADY* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*UNREADY* "unready")
(intern "*ERROR*" (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(shadow '*ERROR* (find-package "INTERA_CORE_MSGS::IOSTATUS"))
(defconstant intera_core_msgs::IOStatus::*ERROR* "error")
(defclass intera_core_msgs::IOStatus
  :super ros::object
  :slots (_tag _key _msg ))

(defmethod intera_core_msgs::IOStatus
  (:init
   (&key
    ((:tag __tag) "")
    ((:key __key) "")
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _tag (string __tag))
   (setq _key (string __key))
   (setq _msg (string __msg))
   self)
  (:tag
   (&optional __tag)
   (if __tag (setq _tag __tag)) _tag)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; string _tag
    4 (length _tag)
    ;; string _key
    4 (length _key)
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tag
       (write-long (length _tag) s) (princ _tag s)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get intera_core_msgs::IOStatus :md5sum-) "9bf5b1607227eec6d965f9c3a59c0650")
(setf (get intera_core_msgs::IOStatus :datatype-) "intera_core_msgs/IOStatus")
(setf (get intera_core_msgs::IOStatus :definition-)
      "## IO status data
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



(provide :intera_core_msgs/IOStatus "9bf5b1607227eec6d965f9c3a59c0650")


