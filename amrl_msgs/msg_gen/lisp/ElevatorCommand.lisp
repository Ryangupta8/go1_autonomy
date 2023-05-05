; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude ElevatorCommand.msg.html

(cl:defclass <ElevatorCommand> (roslisp-msg-protocol:ros-message)
  ((floor_cmd
    :reader floor_cmd
    :initarg :floor_cmd
    :type cl:fixnum
    :initform 0)
   (hold_door
    :reader hold_door
    :initarg :hold_door
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ElevatorCommand (<ElevatorCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<ElevatorCommand> is deprecated: use amrl_msgs-msg:ElevatorCommand instead.")))

(cl:ensure-generic-function 'floor_cmd-val :lambda-list '(m))
(cl:defmethod floor_cmd-val ((m <ElevatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:floor_cmd-val is deprecated.  Use amrl_msgs-msg:floor_cmd instead.")
  (floor_cmd m))

(cl:ensure-generic-function 'hold_door-val :lambda-list '(m))
(cl:defmethod hold_door-val ((m <ElevatorCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:hold_door-val is deprecated.  Use amrl_msgs-msg:hold_door instead.")
  (hold_door m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorCommand>) ostream)
  "Serializes a message object of type '<ElevatorCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'floor_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hold_door) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorCommand>) istream)
  "Deserializes a message object of type '<ElevatorCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'floor_cmd)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hold_door) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorCommand>)))
  "Returns string type for a message object of type '<ElevatorCommand>"
  "amrl_msgs/ElevatorCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorCommand)))
  "Returns string type for a message object of type 'ElevatorCommand"
  "amrl_msgs/ElevatorCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorCommand>)))
  "Returns md5sum for a message object of type '<ElevatorCommand>"
  "e156b9c54afb58ba637b3f6c1dff6ac4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorCommand)))
  "Returns md5sum for a message object of type 'ElevatorCommand"
  "e156b9c54afb58ba637b3f6c1dff6ac4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorCommand>)))
  "Returns full string definition for message of type '<ElevatorCommand>"
  (cl:format cl:nil "uint8 floor_cmd~%bool hold_door~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorCommand)))
  "Returns full string definition for message of type 'ElevatorCommand"
  (cl:format cl:nil "uint8 floor_cmd~%bool hold_door~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorCommand>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorCommand
    (cl:cons ':floor_cmd (floor_cmd msg))
    (cl:cons ':hold_door (hold_door msg))
))
