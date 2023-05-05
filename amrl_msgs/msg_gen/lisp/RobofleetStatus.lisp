; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude RobofleetStatus.msg.html

(cl:defclass <RobofleetStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (is_ok
    :reader is_ok
    :initarg :is_ok
    :type cl:boolean
    :initform cl:nil)
   (battery_level
    :reader battery_level
    :initarg :battery_level
    :type cl:float
    :initform 0.0)
   (location
    :reader location
    :initarg :location
    :type cl:string
    :initform ""))
)

(cl:defclass RobofleetStatus (<RobofleetStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobofleetStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobofleetStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<RobofleetStatus> is deprecated: use amrl_msgs-msg:RobofleetStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RobofleetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:status-val is deprecated.  Use amrl_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'is_ok-val :lambda-list '(m))
(cl:defmethod is_ok-val ((m <RobofleetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:is_ok-val is deprecated.  Use amrl_msgs-msg:is_ok instead.")
  (is_ok m))

(cl:ensure-generic-function 'battery_level-val :lambda-list '(m))
(cl:defmethod battery_level-val ((m <RobofleetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:battery_level-val is deprecated.  Use amrl_msgs-msg:battery_level instead.")
  (battery_level m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <RobofleetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:location-val is deprecated.  Use amrl_msgs-msg:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobofleetStatus>) ostream)
  "Serializes a message object of type '<RobofleetStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ok) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobofleetStatus>) istream)
  "Deserializes a message object of type '<RobofleetStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobofleetStatus>)))
  "Returns string type for a message object of type '<RobofleetStatus>"
  "amrl_msgs/RobofleetStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobofleetStatus)))
  "Returns string type for a message object of type 'RobofleetStatus"
  "amrl_msgs/RobofleetStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobofleetStatus>)))
  "Returns md5sum for a message object of type '<RobofleetStatus>"
  "81400e783a84903eb28c9cb65109e4c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobofleetStatus)))
  "Returns md5sum for a message object of type 'RobofleetStatus"
  "81400e783a84903eb28c9cb65109e4c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobofleetStatus>)))
  "Returns full string definition for message of type '<RobofleetStatus>"
  (cl:format cl:nil "# Robot status report for RoboFleet 2.0 -- WIP~%~%# human-readable general status~%string status~%~%# is the robot functioning normally?~%bool is_ok~%~%# battery percentage, 0 to 1~%float32 battery_level~%~%# human-readable location; map name, etc.~%# For a campus building, this should be \"[BuildingName][Floor]: [coordinates]\" (e.g. \"AHG2: (0, 10, 0)\", \"GDC3: (1.0, 3.0, 3.0)\", etc.)~%string location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobofleetStatus)))
  "Returns full string definition for message of type 'RobofleetStatus"
  (cl:format cl:nil "# Robot status report for RoboFleet 2.0 -- WIP~%~%# human-readable general status~%string status~%~%# is the robot functioning normally?~%bool is_ok~%~%# battery percentage, 0 to 1~%float32 battery_level~%~%# human-readable location; map name, etc.~%# For a campus building, this should be \"[BuildingName][Floor]: [coordinates]\" (e.g. \"AHG2: (0, 10, 0)\", \"GDC3: (1.0, 3.0, 3.0)\", etc.)~%string location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobofleetStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     1
     4
     4 (cl:length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobofleetStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RobofleetStatus
    (cl:cons ':status (status msg))
    (cl:cons ':is_ok (is_ok msg))
    (cl:cons ':battery_level (battery_level msg))
    (cl:cons ':location (location msg))
))
