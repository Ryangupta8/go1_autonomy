; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude HumanStateArrayMsg.msg.html

(cl:defclass <HumanStateArrayMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (human_states
    :reader human_states
    :initarg :human_states
    :type (cl:vector amrl_msgs-msg:HumanStateMsg)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:HumanStateMsg :initial-element (cl:make-instance 'amrl_msgs-msg:HumanStateMsg))))
)

(cl:defclass HumanStateArrayMsg (<HumanStateArrayMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanStateArrayMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanStateArrayMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<HumanStateArrayMsg> is deprecated: use amrl_msgs-msg:HumanStateArrayMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HumanStateArrayMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:header-val is deprecated.  Use amrl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'human_states-val :lambda-list '(m))
(cl:defmethod human_states-val ((m <HumanStateArrayMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:human_states-val is deprecated.  Use amrl_msgs-msg:human_states instead.")
  (human_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanStateArrayMsg>) ostream)
  "Serializes a message object of type '<HumanStateArrayMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'human_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'human_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanStateArrayMsg>) istream)
  "Deserializes a message object of type '<HumanStateArrayMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'human_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'human_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:HumanStateMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanStateArrayMsg>)))
  "Returns string type for a message object of type '<HumanStateArrayMsg>"
  "amrl_msgs/HumanStateArrayMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanStateArrayMsg)))
  "Returns string type for a message object of type 'HumanStateArrayMsg"
  "amrl_msgs/HumanStateArrayMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanStateArrayMsg>)))
  "Returns md5sum for a message object of type '<HumanStateArrayMsg>"
  "49fe6d99468607352f144599e4a4afcb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanStateArrayMsg)))
  "Returns md5sum for a message object of type 'HumanStateArrayMsg"
  "49fe6d99468607352f144599e4a4afcb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanStateArrayMsg>)))
  "Returns full string definition for message of type '<HumanStateArrayMsg>"
  (cl:format cl:nil "std_msgs/Header header~%HumanStateMsg[] human_states~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: amrl_msgs/HumanStateMsg~%geometry_msgs/Pose2D pose~%geometry_msgs/Vector3 translational_velocity~%float64 rotational_velocity~%int64 id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanStateArrayMsg)))
  "Returns full string definition for message of type 'HumanStateArrayMsg"
  (cl:format cl:nil "std_msgs/Header header~%HumanStateMsg[] human_states~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: amrl_msgs/HumanStateMsg~%geometry_msgs/Pose2D pose~%geometry_msgs/Vector3 translational_velocity~%float64 rotational_velocity~%int64 id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanStateArrayMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'human_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanStateArrayMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanStateArrayMsg
    (cl:cons ':header (header msg))
    (cl:cons ':human_states (human_states msg))
))
