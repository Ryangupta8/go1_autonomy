; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude AckermannCurvatureDriveMsg.msg.html

(cl:defclass <AckermannCurvatureDriveMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (curvature
    :reader curvature
    :initarg :curvature
    :type cl:float
    :initform 0.0))
)

(cl:defclass AckermannCurvatureDriveMsg (<AckermannCurvatureDriveMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AckermannCurvatureDriveMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AckermannCurvatureDriveMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<AckermannCurvatureDriveMsg> is deprecated: use amrl_msgs-msg:AckermannCurvatureDriveMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AckermannCurvatureDriveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:header-val is deprecated.  Use amrl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <AckermannCurvatureDriveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:velocity-val is deprecated.  Use amrl_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <AckermannCurvatureDriveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:curvature-val is deprecated.  Use amrl_msgs-msg:curvature instead.")
  (curvature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AckermannCurvatureDriveMsg>) ostream)
  "Serializes a message object of type '<AckermannCurvatureDriveMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AckermannCurvatureDriveMsg>) istream)
  "Deserializes a message object of type '<AckermannCurvatureDriveMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AckermannCurvatureDriveMsg>)))
  "Returns string type for a message object of type '<AckermannCurvatureDriveMsg>"
  "amrl_msgs/AckermannCurvatureDriveMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AckermannCurvatureDriveMsg)))
  "Returns string type for a message object of type 'AckermannCurvatureDriveMsg"
  "amrl_msgs/AckermannCurvatureDriveMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AckermannCurvatureDriveMsg>)))
  "Returns md5sum for a message object of type '<AckermannCurvatureDriveMsg>"
  "764639b7371d58605044e46d114f18a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AckermannCurvatureDriveMsg)))
  "Returns md5sum for a message object of type 'AckermannCurvatureDriveMsg"
  "764639b7371d58605044e46d114f18a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AckermannCurvatureDriveMsg>)))
  "Returns full string definition for message of type '<AckermannCurvatureDriveMsg>"
  (cl:format cl:nil "std_msgs/Header header~%~%# Linear velocity command [m/s]. Positive values indicate forward motion,~%# negative values indicate reverse motion.~%float32 velocity~%~%# Desired curvature (reciprocal of radius of turning) of motion. A curvature~%# of 0 indicates an infinite radius of turning, corresponding to linear~%# motion. Positive values of curvature indicate turning to the left, negative~%# values indicate turning to the right.~%float32 curvature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AckermannCurvatureDriveMsg)))
  "Returns full string definition for message of type 'AckermannCurvatureDriveMsg"
  (cl:format cl:nil "std_msgs/Header header~%~%# Linear velocity command [m/s]. Positive values indicate forward motion,~%# negative values indicate reverse motion.~%float32 velocity~%~%# Desired curvature (reciprocal of radius of turning) of motion. A curvature~%# of 0 indicates an infinite radius of turning, corresponding to linear~%# motion. Positive values of curvature indicate turning to the left, negative~%# values indicate turning to the right.~%float32 curvature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AckermannCurvatureDriveMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AckermannCurvatureDriveMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AckermannCurvatureDriveMsg
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':curvature (curvature msg))
))
