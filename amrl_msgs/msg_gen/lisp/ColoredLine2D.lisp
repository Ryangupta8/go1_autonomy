; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude ColoredLine2D.msg.html

(cl:defclass <ColoredLine2D> (roslisp-msg-protocol:ros-message)
  ((p0
    :reader p0
    :initarg :p0
    :type amrl_msgs-msg:Point2D
    :initform (cl:make-instance 'amrl_msgs-msg:Point2D))
   (p1
    :reader p1
    :initarg :p1
    :type amrl_msgs-msg:Point2D
    :initform (cl:make-instance 'amrl_msgs-msg:Point2D))
   (color
    :reader color
    :initarg :color
    :type cl:integer
    :initform 0))
)

(cl:defclass ColoredLine2D (<ColoredLine2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColoredLine2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColoredLine2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<ColoredLine2D> is deprecated: use amrl_msgs-msg:ColoredLine2D instead.")))

(cl:ensure-generic-function 'p0-val :lambda-list '(m))
(cl:defmethod p0-val ((m <ColoredLine2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:p0-val is deprecated.  Use amrl_msgs-msg:p0 instead.")
  (p0 m))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <ColoredLine2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:p1-val is deprecated.  Use amrl_msgs-msg:p1 instead.")
  (p1 m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ColoredLine2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:color-val is deprecated.  Use amrl_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColoredLine2D>) ostream)
  "Serializes a message object of type '<ColoredLine2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p1) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColoredLine2D>) istream)
  "Deserializes a message object of type '<ColoredLine2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p1) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'color)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColoredLine2D>)))
  "Returns string type for a message object of type '<ColoredLine2D>"
  "amrl_msgs/ColoredLine2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColoredLine2D)))
  "Returns string type for a message object of type 'ColoredLine2D"
  "amrl_msgs/ColoredLine2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColoredLine2D>)))
  "Returns md5sum for a message object of type '<ColoredLine2D>"
  "f09bffbeb5ba52952062cabb27c95439")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColoredLine2D)))
  "Returns md5sum for a message object of type 'ColoredLine2D"
  "f09bffbeb5ba52952062cabb27c95439")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColoredLine2D>)))
  "Returns full string definition for message of type '<ColoredLine2D>"
  (cl:format cl:nil "Point2D p0~%Point2D p1~%uint32 color~%~%================================================================================~%MSG: amrl_msgs/Point2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColoredLine2D)))
  "Returns full string definition for message of type 'ColoredLine2D"
  (cl:format cl:nil "Point2D p0~%Point2D p1~%uint32 color~%~%================================================================================~%MSG: amrl_msgs/Point2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColoredLine2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p1))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColoredLine2D>))
  "Converts a ROS message object to a list"
  (cl:list 'ColoredLine2D
    (cl:cons ':p0 (p0 msg))
    (cl:cons ':p1 (p1 msg))
    (cl:cons ':color (color msg))
))
