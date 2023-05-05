; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude ElevatorStatus.msg.html

(cl:defclass <ElevatorStatus> (roslisp-msg-protocol:ros-message)
  ((floor
    :reader floor
    :initarg :floor
    :type cl:fixnum
    :initform 0)
   (door
    :reader door
    :initarg :door
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ElevatorStatus (<ElevatorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<ElevatorStatus> is deprecated: use amrl_msgs-msg:ElevatorStatus instead.")))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:floor-val is deprecated.  Use amrl_msgs-msg:floor instead.")
  (floor m))

(cl:ensure-generic-function 'door-val :lambda-list '(m))
(cl:defmethod door-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:door-val is deprecated.  Use amrl_msgs-msg:door instead.")
  (door m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ElevatorStatus>)))
    "Constants for message type '<ElevatorStatus>"
  '((:DOOR_OPEN . 1)
    (:DOOR_CLOSED . 0)
    (:DOOR_TRANSITION . 2)
    (:FLOOR_TRANSITION . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ElevatorStatus)))
    "Constants for message type 'ElevatorStatus"
  '((:DOOR_OPEN . 1)
    (:DOOR_CLOSED . 0)
    (:DOOR_TRANSITION . 2)
    (:FLOOR_TRANSITION . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorStatus>) ostream)
  "Serializes a message object of type '<ElevatorStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'floor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorStatus>) istream)
  "Deserializes a message object of type '<ElevatorStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'floor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorStatus>)))
  "Returns string type for a message object of type '<ElevatorStatus>"
  "amrl_msgs/ElevatorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorStatus)))
  "Returns string type for a message object of type 'ElevatorStatus"
  "amrl_msgs/ElevatorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorStatus>)))
  "Returns md5sum for a message object of type '<ElevatorStatus>"
  "83d512d38050c144daa8ed0de80ab702")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorStatus)))
  "Returns md5sum for a message object of type 'ElevatorStatus"
  "83d512d38050c144daa8ed0de80ab702")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorStatus>)))
  "Returns full string definition for message of type '<ElevatorStatus>"
  (cl:format cl:nil "# define enum for door states~%uint8 DOOR_OPEN=1~%uint8 DOOR_CLOSED=0~%uint8 DOOR_TRANSITION=2~%~%# define enum for floor states~%uint8 FLOOR_TRANSITION=0~%~%uint8 floor~%uint8 door~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorStatus)))
  "Returns full string definition for message of type 'ElevatorStatus"
  (cl:format cl:nil "# define enum for door states~%uint8 DOOR_OPEN=1~%uint8 DOOR_CLOSED=0~%uint8 DOOR_TRANSITION=2~%~%# define enum for floor states~%uint8 FLOOR_TRANSITION=0~%~%uint8 floor~%uint8 door~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorStatus>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorStatus
    (cl:cons ':floor (floor msg))
    (cl:cons ':door (door msg))
))
