; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude ErrorReport.msg.html

(cl:defclass <ErrorReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (laser_header
    :reader laser_header
    :initarg :laser_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (severity_level
    :reader severity_level
    :initarg :severity_level
    :type cl:fixnum
    :initform 0)
   (failed_subsystem
    :reader failed_subsystem
    :initarg :failed_subsystem
    :type cl:fixnum
    :initform 0)
   (detailed_error_msg
    :reader detailed_error_msg
    :initarg :detailed_error_msg
    :type cl:string
    :initform ""))
)

(cl:defclass ErrorReport (<ErrorReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<ErrorReport> is deprecated: use amrl_msgs-msg:ErrorReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ErrorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:header-val is deprecated.  Use amrl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'laser_header-val :lambda-list '(m))
(cl:defmethod laser_header-val ((m <ErrorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:laser_header-val is deprecated.  Use amrl_msgs-msg:laser_header instead.")
  (laser_header m))

(cl:ensure-generic-function 'severity_level-val :lambda-list '(m))
(cl:defmethod severity_level-val ((m <ErrorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:severity_level-val is deprecated.  Use amrl_msgs-msg:severity_level instead.")
  (severity_level m))

(cl:ensure-generic-function 'failed_subsystem-val :lambda-list '(m))
(cl:defmethod failed_subsystem-val ((m <ErrorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:failed_subsystem-val is deprecated.  Use amrl_msgs-msg:failed_subsystem instead.")
  (failed_subsystem m))

(cl:ensure-generic-function 'detailed_error_msg-val :lambda-list '(m))
(cl:defmethod detailed_error_msg-val ((m <ErrorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:detailed_error_msg-val is deprecated.  Use amrl_msgs-msg:detailed_error_msg instead.")
  (detailed_error_msg m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ErrorReport>)))
    "Constants for message type '<ErrorReport>"
  '((:INFO . 0)
    (:SUBOPTIMAL . 1)
    (:RISKY . 2)
    (:CATASTROPHIC . 3)
    (:OTHER . 0)
    (:LOCALIZATION . 1)
    (:NAVIGATION_PERCEPTION . 2)
    (:NAVIGATION_LOCAL_PLANNING . 3)
    (:NAVIGATION_GLOBAL_PLANNING . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ErrorReport)))
    "Constants for message type 'ErrorReport"
  '((:INFO . 0)
    (:SUBOPTIMAL . 1)
    (:RISKY . 2)
    (:CATASTROPHIC . 3)
    (:OTHER . 0)
    (:LOCALIZATION . 1)
    (:NAVIGATION_PERCEPTION . 2)
    (:NAVIGATION_LOCAL_PLANNING . 3)
    (:NAVIGATION_GLOBAL_PLANNING . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorReport>) ostream)
  "Serializes a message object of type '<ErrorReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'laser_header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'severity_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'failed_subsystem)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detailed_error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detailed_error_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorReport>) istream)
  "Deserializes a message object of type '<ErrorReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'laser_header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'severity_level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'failed_subsystem)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detailed_error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detailed_error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorReport>)))
  "Returns string type for a message object of type '<ErrorReport>"
  "amrl_msgs/ErrorReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorReport)))
  "Returns string type for a message object of type 'ErrorReport"
  "amrl_msgs/ErrorReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorReport>)))
  "Returns md5sum for a message object of type '<ErrorReport>"
  "9898087bf4de62612995185ab9cc18ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorReport)))
  "Returns md5sum for a message object of type 'ErrorReport"
  "9898087bf4de62612995185ab9cc18ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorReport>)))
  "Returns full string definition for message of type '<ErrorReport>"
  (cl:format cl:nil "std_msgs/Header header~%~%# Header from the laser scan that was received closest to the creation of this report~%std_msgs/Header laser_header~%~%# Severity level enum~%uint8 INFO=0 # Information~%uint8 SUBOPTIMAL=1 # Suboptimal but safe performance~%uint8 RISKY=2 # risky, potentially unsafe (got away with it, but could have been catastrophic)~%uint8 CATASTROPHIC=3 # catastrohpic (e.g. hit an obstacle)~%~%# Subsystem enum~%uint8 OTHER=0 # for forward compatibility -- details can be added to the free-text field or a new type can be added if we find there is demand~%uint8 LOCALIZATION=1 # robot is mislocalized~%uint8 NAVIGATION_PERCEPTION=2 # perception failure, e.g. it mis-classified grass as traversible~%uint8 NAVIGATION_LOCAL_PLANNING=3 # problems with local planning~%uint8 NAVIGATION_GLOBAL_PLANNING=4 # problems with global planning~%~%# Should be one of the above severity levels~%uint8 severity_level~%~%# Should be one of the above subsystems~%uint8 failed_subsystem~%~%# Detailed text providing details about the error~%string detailed_error_msg~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorReport)))
  "Returns full string definition for message of type 'ErrorReport"
  (cl:format cl:nil "std_msgs/Header header~%~%# Header from the laser scan that was received closest to the creation of this report~%std_msgs/Header laser_header~%~%# Severity level enum~%uint8 INFO=0 # Information~%uint8 SUBOPTIMAL=1 # Suboptimal but safe performance~%uint8 RISKY=2 # risky, potentially unsafe (got away with it, but could have been catastrophic)~%uint8 CATASTROPHIC=3 # catastrohpic (e.g. hit an obstacle)~%~%# Subsystem enum~%uint8 OTHER=0 # for forward compatibility -- details can be added to the free-text field or a new type can be added if we find there is demand~%uint8 LOCALIZATION=1 # robot is mislocalized~%uint8 NAVIGATION_PERCEPTION=2 # perception failure, e.g. it mis-classified grass as traversible~%uint8 NAVIGATION_LOCAL_PLANNING=3 # problems with local planning~%uint8 NAVIGATION_GLOBAL_PLANNING=4 # problems with global planning~%~%# Should be one of the above severity levels~%uint8 severity_level~%~%# Should be one of the above subsystems~%uint8 failed_subsystem~%~%# Detailed text providing details about the error~%string detailed_error_msg~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'laser_header))
     1
     1
     4 (cl:length (cl:slot-value msg 'detailed_error_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorReport
    (cl:cons ':header (header msg))
    (cl:cons ':laser_header (laser_header msg))
    (cl:cons ':severity_level (severity_level msg))
    (cl:cons ':failed_subsystem (failed_subsystem msg))
    (cl:cons ':detailed_error_msg (detailed_error_msg msg))
))
