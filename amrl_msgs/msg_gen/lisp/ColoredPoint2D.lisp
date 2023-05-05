; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude ColoredPoint2D.msg.html

(cl:defclass <ColoredPoint2D> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type amrl_msgs-msg:Point2D
    :initform (cl:make-instance 'amrl_msgs-msg:Point2D))
   (color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0))
)

(cl:defclass ColoredPoint2D (<ColoredPoint2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColoredPoint2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColoredPoint2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<ColoredPoint2D> is deprecated: use amrl_msgs-msg:ColoredPoint2D instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <ColoredPoint2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:point-val is deprecated.  Use amrl_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ColoredPoint2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:color-val is deprecated.  Use amrl_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColoredPoint2D>) ostream)
  "Serializes a message object of type '<ColoredPoint2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColoredPoint2D>) istream)
  "Deserializes a message object of type '<ColoredPoint2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColoredPoint2D>)))
  "Returns string type for a message object of type '<ColoredPoint2D>"
  "amrl_msgs/ColoredPoint2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColoredPoint2D)))
  "Returns string type for a message object of type 'ColoredPoint2D"
  "amrl_msgs/ColoredPoint2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColoredPoint2D>)))
  "Returns md5sum for a message object of type '<ColoredPoint2D>"
  "ddbdd5a0fbcde494542b00e8d4047aee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColoredPoint2D)))
  "Returns md5sum for a message object of type 'ColoredPoint2D"
  "ddbdd5a0fbcde494542b00e8d4047aee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColoredPoint2D>)))
  "Returns full string definition for message of type '<ColoredPoint2D>"
  (cl:format cl:nil "Point2D point~%uint32 color~%================================================================================~%MSG: amrl_msgs/Point2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColoredPoint2D)))
  "Returns full string definition for message of type 'ColoredPoint2D"
  (cl:format cl:nil "Point2D point~%uint32 color~%================================================================================~%MSG: amrl_msgs/Point2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColoredPoint2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColoredPoint2D>))
  "Converts a ROS message object to a list"
  (cl:list 'ColoredPoint2D
    (cl:cons ':point (point msg))
    (cl:cons ':color (color msg))
))
