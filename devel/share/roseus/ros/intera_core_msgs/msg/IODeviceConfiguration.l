;; Auto-generated. Do not edit!


(when (boundp 'intera_core_msgs::IODeviceConfiguration)
  (if (not (find-package "INTERA_CORE_MSGS"))
    (make-package "INTERA_CORE_MSGS"))
  (shadow 'IODeviceConfiguration (find-package "INTERA_CORE_MSGS")))
(unless (find-package "INTERA_CORE_MSGS::IODEVICECONFIGURATION")
  (make-package "INTERA_CORE_MSGS::IODEVICECONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude IODeviceConfiguration.msg.html


(defclass intera_core_msgs::IODeviceConfiguration
  :super ros::object
  :slots (_time _device _ports _signals ))

(defmethod intera_core_msgs::IODeviceConfiguration
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:device __device) (instance intera_core_msgs::IOComponentConfiguration :init))
    ((:ports __ports) (let (r) (dotimes (i 0) (push (instance intera_core_msgs::IOComponentConfiguration :init) r)) r))
    ((:signals __signals) (let (r) (dotimes (i 0) (push (instance intera_core_msgs::IOComponentConfiguration :init) r)) r))
    )
   (send-super :init)
   (setq _time __time)
   (setq _device __device)
   (setq _ports __ports)
   (setq _signals __signals)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:device
   (&rest __device)
   (if (keywordp (car __device))
       (send* _device __device)
     (progn
       (if __device (setq _device (car __device)))
       _device)))
  (:ports
   (&rest __ports)
   (if (keywordp (car __ports))
       (send* _ports __ports)
     (progn
       (if __ports (setq _ports (car __ports)))
       _ports)))
  (:signals
   (&rest __signals)
   (if (keywordp (car __signals))
       (send* _signals __signals)
     (progn
       (if __signals (setq _signals (car __signals)))
       _signals)))
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; intera_core_msgs/IOComponentConfiguration _device
    (send _device :serialization-length)
    ;; intera_core_msgs/IOComponentConfiguration[] _ports
    (apply #'+ (send-all _ports :serialization-length)) 4
    ;; intera_core_msgs/IOComponentConfiguration[] _signals
    (apply #'+ (send-all _signals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; intera_core_msgs/IOComponentConfiguration _device
       (send _device :serialize s)
     ;; intera_core_msgs/IOComponentConfiguration[] _ports
     (write-long (length _ports) s)
     (dolist (elem _ports)
       (send elem :serialize s)
       )
     ;; intera_core_msgs/IOComponentConfiguration[] _signals
     (write-long (length _signals) s)
     (dolist (elem _signals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; intera_core_msgs/IOComponentConfiguration _device
     (send _device :deserialize buf ptr-) (incf ptr- (send _device :serialization-length))
   ;; intera_core_msgs/IOComponentConfiguration[] _ports
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ports (let (r) (dotimes (i n) (push (instance intera_core_msgs::IOComponentConfiguration :init) r)) r))
     (dolist (elem- _ports)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; intera_core_msgs/IOComponentConfiguration[] _signals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signals (let (r) (dotimes (i n) (push (instance intera_core_msgs::IOComponentConfiguration :init) r)) r))
     (dolist (elem- _signals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get intera_core_msgs::IODeviceConfiguration :md5sum-) "1794fdd703d897a548b2237b9d661697")
(setf (get intera_core_msgs::IODeviceConfiguration :datatype-) "intera_core_msgs/IODeviceConfiguration")
(setf (get intera_core_msgs::IODeviceConfiguration :definition-)
      "## IO Device Configuration
time time                             # configuration command timestamp
IOComponentConfiguration   device     # device configuration data
IOComponentConfiguration[] ports      # Ports
IOComponentConfiguration[] signals    # Signals

================================================================================
MSG: intera_core_msgs/IOComponentConfiguration
## IO Component configuration data
string name                  # device name
string config                # device-specific JSON configuration data


")



(provide :intera_core_msgs/IODeviceConfiguration "1794fdd703d897a548b2237b9d661697")


