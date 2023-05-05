; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude PlanarObjDetection.msg.html

(cl:defclass <PlanarObjDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (semantic_class
    :reader semantic_class
    :initarg :semantic_class
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type amrl_msgs-msg:Pose2Df
    :initform (cl:make-instance 'amrl_msgs-msg:Pose2Df)))
)

(cl:defclass PlanarObjDetection (<PlanarObjDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanarObjDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanarObjDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<PlanarObjDetection> is deprecated: use amrl_msgs-msg:PlanarObjDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanarObjDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:header-val is deprecated.  Use amrl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'semantic_class-val :lambda-list '(m))
(cl:defmethod semantic_class-val ((m <PlanarObjDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:semantic_class-val is deprecated.  Use amrl_msgs-msg:semantic_class instead.")
  (semantic_class m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PlanarObjDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:pose-val is deprecated.  Use amrl_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanarObjDetection>) ostream)
  "Serializes a message object of type '<PlanarObjDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'semantic_class))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'semantic_class))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanarObjDetection>) istream)
  "Deserializes a message object of type '<PlanarObjDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'semantic_class) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'semantic_class) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanarObjDetection>)))
  "Returns string type for a message object of type '<PlanarObjDetection>"
  "amrl_msgs/PlanarObjDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanarObjDetection)))
  "Returns string type for a message object of type 'PlanarObjDetection"
  "amrl_msgs/PlanarObjDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanarObjDetection>)))
  "Returns md5sum for a message object of type '<PlanarObjDetection>"
  "fdb62d21be22070c9064115390dc4a1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanarObjDetection)))
  "Returns md5sum for a message object of type 'PlanarObjDetection"
  "fdb62d21be22070c9064115390dc4a1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanarObjDetection>)))
  "Returns full string definition for message of type '<PlanarObjDetection>"
  (cl:format cl:nil "# This should be used for object detections for 2D environments~%# or to represent detections from a birds eye view~%~%# Defines time of detection and frame in which the detection was observed~%std_msgs/Header header~%~%# Semantic class of the detection~%string semantic_class~%~%# Pose of the detection~%Pose2Df pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanarObjDetection)))
  "Returns full string definition for message of type 'PlanarObjDetection"
  (cl:format cl:nil "# This should be used for object detections for 2D environments~%# or to represent detections from a birds eye view~%~%# Defines time of detection and frame in which the detection was observed~%std_msgs/Header header~%~%# Semantic class of the detection~%string semantic_class~%~%# Pose of the detection~%Pose2Df pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanarObjDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'semantic_class))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanarObjDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanarObjDetection
    (cl:cons ':header (header msg))
    (cl:cons ':semantic_class (semantic_class msg))
    (cl:cons ':pose (pose msg))
))
