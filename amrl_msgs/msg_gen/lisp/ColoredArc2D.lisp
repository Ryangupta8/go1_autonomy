; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude ColoredArc2D.msg.html

(cl:defclass <ColoredArc2D> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type amrl_msgs-msg:Point2D
    :initform (cl:make-instance 'amrl_msgs-msg:Point2D))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (start_angle
    :reader start_angle
    :initarg :start_angle
    :type cl:float
    :initform 0.0)
   (end_angle
    :reader end_angle
    :initarg :end_angle
    :type cl:float
    :initform 0.0)
   (color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0))
)

(cl:defclass ColoredArc2D (<ColoredArc2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColoredArc2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColoredArc2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<ColoredArc2D> is deprecated: use amrl_msgs-msg:ColoredArc2D instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <ColoredArc2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:center-val is deprecated.  Use amrl_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <ColoredArc2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:radius-val is deprecated.  Use amrl_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'start_angle-val :lambda-list '(m))
(cl:defmethod start_angle-val ((m <ColoredArc2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:start_angle-val is deprecated.  Use amrl_msgs-msg:start_angle instead.")
  (start_angle m))

(cl:ensure-generic-function 'end_angle-val :lambda-list '(m))
(cl:defmethod end_angle-val ((m <ColoredArc2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:end_angle-val is deprecated.  Use amrl_msgs-msg:end_angle instead.")
  (end_angle m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ColoredArc2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:color-val is deprecated.  Use amrl_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColoredArc2D>) ostream)
  "Serializes a message object of type '<ColoredArc2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColoredArc2D>) istream)
  "Deserializes a message object of type '<ColoredArc2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColoredArc2D>)))
  "Returns string type for a message object of type '<ColoredArc2D>"
  "amrl_msgs/ColoredArc2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColoredArc2D)))
  "Returns string type for a message object of type 'ColoredArc2D"
  "amrl_msgs/ColoredArc2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColoredArc2D>)))
  "Returns md5sum for a message object of type '<ColoredArc2D>"
  "cca4be38df37d86344ae953f24de0bef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColoredArc2D)))
  "Returns md5sum for a message object of type 'ColoredArc2D"
  "cca4be38df37d86344ae953f24de0bef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColoredArc2D>)))
  "Returns full string definition for message of type '<ColoredArc2D>"
  (cl:format cl:nil "# Circular arc section.~%Point2D center~%float32 radius~%float32 start_angle~%float32 end_angle~%uint32 color~%================================================================================~%MSG: amrl_msgs/Point2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColoredArc2D)))
  "Returns full string definition for message of type 'ColoredArc2D"
  (cl:format cl:nil "# Circular arc section.~%Point2D center~%float32 radius~%float32 start_angle~%float32 end_angle~%uint32 color~%================================================================================~%MSG: amrl_msgs/Point2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColoredArc2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColoredArc2D>))
  "Converts a ROS message object to a list"
  (cl:list 'ColoredArc2D
    (cl:cons ':center (center msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':start_angle (start_angle msg))
    (cl:cons ':end_angle (end_angle msg))
    (cl:cons ':color (color msg))
))
