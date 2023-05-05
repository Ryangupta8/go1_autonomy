; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude PathVisualization.msg.html

(cl:defclass <PathVisualization> (roslisp-msg-protocol:ros-message)
  ((curvature
    :reader curvature
    :initarg :curvature
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (clearance
    :reader clearance
    :initarg :clearance
    :type cl:float
    :initform 0.0))
)

(cl:defclass PathVisualization (<PathVisualization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathVisualization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathVisualization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<PathVisualization> is deprecated: use amrl_msgs-msg:PathVisualization instead.")))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <PathVisualization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:curvature-val is deprecated.  Use amrl_msgs-msg:curvature instead.")
  (curvature m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <PathVisualization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:distance-val is deprecated.  Use amrl_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'clearance-val :lambda-list '(m))
(cl:defmethod clearance-val ((m <PathVisualization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:clearance-val is deprecated.  Use amrl_msgs-msg:clearance instead.")
  (clearance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathVisualization>) ostream)
  "Serializes a message object of type '<PathVisualization>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'clearance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathVisualization>) istream)
  "Deserializes a message object of type '<PathVisualization>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clearance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathVisualization>)))
  "Returns string type for a message object of type '<PathVisualization>"
  "amrl_msgs/PathVisualization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathVisualization)))
  "Returns string type for a message object of type 'PathVisualization"
  "amrl_msgs/PathVisualization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathVisualization>)))
  "Returns md5sum for a message object of type '<PathVisualization>"
  "44bcef08544f3b91fe529f1d3b90ede8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathVisualization)))
  "Returns md5sum for a message object of type 'PathVisualization"
  "44bcef08544f3b91fe529f1d3b90ede8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathVisualization>)))
  "Returns full string definition for message of type '<PathVisualization>"
  (cl:format cl:nil "float32 curvature~%float32 distance~%float32 clearance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathVisualization)))
  "Returns full string definition for message of type 'PathVisualization"
  (cl:format cl:nil "float32 curvature~%float32 distance~%float32 clearance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathVisualization>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathVisualization>))
  "Converts a ROS message object to a list"
  (cl:list 'PathVisualization
    (cl:cons ':curvature (curvature msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':clearance (clearance msg))
))
