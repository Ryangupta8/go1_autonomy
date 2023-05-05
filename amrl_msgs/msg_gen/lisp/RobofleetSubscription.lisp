; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude RobofleetSubscription.msg.html

(cl:defclass <RobofleetSubscription> (roslisp-msg-protocol:ros-message)
  ((topic_regex
    :reader topic_regex
    :initarg :topic_regex
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobofleetSubscription (<RobofleetSubscription>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobofleetSubscription>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobofleetSubscription)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<RobofleetSubscription> is deprecated: use amrl_msgs-msg:RobofleetSubscription instead.")))

(cl:ensure-generic-function 'topic_regex-val :lambda-list '(m))
(cl:defmethod topic_regex-val ((m <RobofleetSubscription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:topic_regex-val is deprecated.  Use amrl_msgs-msg:topic_regex instead.")
  (topic_regex m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <RobofleetSubscription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:action-val is deprecated.  Use amrl_msgs-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobofleetSubscription>)))
    "Constants for message type '<RobofleetSubscription>"
  '((:ACTION_UNSUBSCRIBE . 0)
    (:ACTION_SUBSCRIBE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobofleetSubscription)))
    "Constants for message type 'RobofleetSubscription"
  '((:ACTION_UNSUBSCRIBE . 0)
    (:ACTION_SUBSCRIBE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobofleetSubscription>) ostream)
  "Serializes a message object of type '<RobofleetSubscription>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_regex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_regex))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobofleetSubscription>) istream)
  "Deserializes a message object of type '<RobofleetSubscription>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_regex) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_regex) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobofleetSubscription>)))
  "Returns string type for a message object of type '<RobofleetSubscription>"
  "amrl_msgs/RobofleetSubscription")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobofleetSubscription)))
  "Returns string type for a message object of type 'RobofleetSubscription"
  "amrl_msgs/RobofleetSubscription")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobofleetSubscription>)))
  "Returns md5sum for a message object of type '<RobofleetSubscription>"
  "a88ef45bfc4d5549d17f245fd122657e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobofleetSubscription)))
  "Returns md5sum for a message object of type 'RobofleetSubscription"
  "a88ef45bfc4d5549d17f245fd122657e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobofleetSubscription>)))
  "Returns full string definition for message of type '<RobofleetSubscription>"
  (cl:format cl:nil "# Robofleet subscription for Robofleet 2.0~%~%uint8 ACTION_UNSUBSCRIBE=0~%uint8 ACTION_SUBSCRIBE=1~%~%# receive messages on any topic that matches this (JavaScript) regex~%string topic_regex~%~%uint8 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobofleetSubscription)))
  "Returns full string definition for message of type 'RobofleetSubscription"
  (cl:format cl:nil "# Robofleet subscription for Robofleet 2.0~%~%uint8 ACTION_UNSUBSCRIBE=0~%uint8 ACTION_SUBSCRIBE=1~%~%# receive messages on any topic that matches this (JavaScript) regex~%string topic_regex~%~%uint8 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobofleetSubscription>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_regex))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobofleetSubscription>))
  "Converts a ROS message object to a list"
  (cl:list 'RobofleetSubscription
    (cl:cons ':topic_regex (topic_regex msg))
    (cl:cons ':action (action msg))
))
