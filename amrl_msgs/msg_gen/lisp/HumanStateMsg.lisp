; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude HumanStateMsg.msg.html

(cl:defclass <HumanStateMsg> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (translational_velocity
    :reader translational_velocity
    :initarg :translational_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rotational_velocity
    :reader rotational_velocity
    :initarg :rotational_velocity
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass HumanStateMsg (<HumanStateMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanStateMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanStateMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<HumanStateMsg> is deprecated: use amrl_msgs-msg:HumanStateMsg instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <HumanStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:pose-val is deprecated.  Use amrl_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'translational_velocity-val :lambda-list '(m))
(cl:defmethod translational_velocity-val ((m <HumanStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:translational_velocity-val is deprecated.  Use amrl_msgs-msg:translational_velocity instead.")
  (translational_velocity m))

(cl:ensure-generic-function 'rotational_velocity-val :lambda-list '(m))
(cl:defmethod rotational_velocity-val ((m <HumanStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:rotational_velocity-val is deprecated.  Use amrl_msgs-msg:rotational_velocity instead.")
  (rotational_velocity m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HumanStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:id-val is deprecated.  Use amrl_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanStateMsg>) ostream)
  "Serializes a message object of type '<HumanStateMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translational_velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rotational_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanStateMsg>) istream)
  "Deserializes a message object of type '<HumanStateMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translational_velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotational_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanStateMsg>)))
  "Returns string type for a message object of type '<HumanStateMsg>"
  "amrl_msgs/HumanStateMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanStateMsg)))
  "Returns string type for a message object of type 'HumanStateMsg"
  "amrl_msgs/HumanStateMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanStateMsg>)))
  "Returns md5sum for a message object of type '<HumanStateMsg>"
  "38a0da97ca8e10c5097354dcbe286deb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanStateMsg)))
  "Returns md5sum for a message object of type 'HumanStateMsg"
  "38a0da97ca8e10c5097354dcbe286deb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanStateMsg>)))
  "Returns full string definition for message of type '<HumanStateMsg>"
  (cl:format cl:nil "geometry_msgs/Pose2D pose~%geometry_msgs/Vector3 translational_velocity~%float64 rotational_velocity~%int64 id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanStateMsg)))
  "Returns full string definition for message of type 'HumanStateMsg"
  (cl:format cl:nil "geometry_msgs/Pose2D pose~%geometry_msgs/Vector3 translational_velocity~%float64 rotational_velocity~%int64 id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanStateMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translational_velocity))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanStateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanStateMsg
    (cl:cons ':pose (pose msg))
    (cl:cons ':translational_velocity (translational_velocity msg))
    (cl:cons ':rotational_velocity (rotational_velocity msg))
    (cl:cons ':id (id msg))
))
