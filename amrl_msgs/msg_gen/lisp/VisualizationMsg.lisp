; Auto-generated. Do not edit!


(cl:in-package amrl_msgs-msg)


;//! \htmlinclude VisualizationMsg.msg.html

(cl:defclass <VisualizationMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ns
    :reader ns
    :initarg :ns
    :type cl:string
    :initform "")
   (particles
    :reader particles
    :initarg :particles
    :type (cl:vector amrl_msgs-msg:Pose2Df)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:Pose2Df :initial-element (cl:make-instance 'amrl_msgs-msg:Pose2Df)))
   (path_options
    :reader path_options
    :initarg :path_options
    :type (cl:vector amrl_msgs-msg:PathVisualization)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:PathVisualization :initial-element (cl:make-instance 'amrl_msgs-msg:PathVisualization)))
   (points
    :reader points
    :initarg :points
    :type (cl:vector amrl_msgs-msg:ColoredPoint2D)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:ColoredPoint2D :initial-element (cl:make-instance 'amrl_msgs-msg:ColoredPoint2D)))
   (lines
    :reader lines
    :initarg :lines
    :type (cl:vector amrl_msgs-msg:ColoredLine2D)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:ColoredLine2D :initial-element (cl:make-instance 'amrl_msgs-msg:ColoredLine2D)))
   (arcs
    :reader arcs
    :initarg :arcs
    :type (cl:vector amrl_msgs-msg:ColoredArc2D)
   :initform (cl:make-array 0 :element-type 'amrl_msgs-msg:ColoredArc2D :initial-element (cl:make-instance 'amrl_msgs-msg:ColoredArc2D))))
)

(cl:defclass VisualizationMsg (<VisualizationMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisualizationMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisualizationMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amrl_msgs-msg:<VisualizationMsg> is deprecated: use amrl_msgs-msg:VisualizationMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VisualizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:header-val is deprecated.  Use amrl_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <VisualizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:ns-val is deprecated.  Use amrl_msgs-msg:ns instead.")
  (ns m))

(cl:ensure-generic-function 'particles-val :lambda-list '(m))
(cl:defmethod particles-val ((m <VisualizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:particles-val is deprecated.  Use amrl_msgs-msg:particles instead.")
  (particles m))

(cl:ensure-generic-function 'path_options-val :lambda-list '(m))
(cl:defmethod path_options-val ((m <VisualizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:path_options-val is deprecated.  Use amrl_msgs-msg:path_options instead.")
  (path_options m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <VisualizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:points-val is deprecated.  Use amrl_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'lines-val :lambda-list '(m))
(cl:defmethod lines-val ((m <VisualizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:lines-val is deprecated.  Use amrl_msgs-msg:lines instead.")
  (lines m))

(cl:ensure-generic-function 'arcs-val :lambda-list '(m))
(cl:defmethod arcs-val ((m <VisualizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amrl_msgs-msg:arcs-val is deprecated.  Use amrl_msgs-msg:arcs instead.")
  (arcs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisualizationMsg>) ostream)
  "Serializes a message object of type '<VisualizationMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ns))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'particles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'particles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_options))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_options))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lines))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'arcs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisualizationMsg>) istream)
  "Deserializes a message object of type '<VisualizationMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ns) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ns) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'particles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'particles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:Pose2Df))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_options) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_options)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:PathVisualization))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:ColoredPoint2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lines) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lines)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:ColoredLine2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arcs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arcs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amrl_msgs-msg:ColoredArc2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisualizationMsg>)))
  "Returns string type for a message object of type '<VisualizationMsg>"
  "amrl_msgs/VisualizationMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisualizationMsg)))
  "Returns string type for a message object of type 'VisualizationMsg"
  "amrl_msgs/VisualizationMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisualizationMsg>)))
  "Returns md5sum for a message object of type '<VisualizationMsg>"
  "989408817adef9cc3922d1967821d49a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisualizationMsg)))
  "Returns md5sum for a message object of type 'VisualizationMsg"
  "989408817adef9cc3922d1967821d49a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisualizationMsg>)))
  "Returns full string definition for message of type '<VisualizationMsg>"
  (cl:format cl:nil "std_msgs/Header header~%# Namespace~%string ns~%~%# Provided by particle filter~%Pose2Df[] particles~%~%# Provided by navigation~%# Assumes that the last one in the list is the best option.~%PathVisualization[] path_options~%~%# Generic visualization types.~%ColoredPoint2D[] points~%ColoredLine2D[] lines~%ColoredArc2D[] arcs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%================================================================================~%MSG: amrl_msgs/PathVisualization~%float32 curvature~%float32 distance~%float32 clearance~%================================================================================~%MSG: amrl_msgs/ColoredPoint2D~%Point2D point~%uint32 color~%================================================================================~%MSG: amrl_msgs/Point2D~%float32 x~%float32 y~%~%================================================================================~%MSG: amrl_msgs/ColoredLine2D~%Point2D p0~%Point2D p1~%uint32 color~%~%================================================================================~%MSG: amrl_msgs/ColoredArc2D~%# Circular arc section.~%Point2D center~%float32 radius~%float32 start_angle~%float32 end_angle~%uint32 color~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisualizationMsg)))
  "Returns full string definition for message of type 'VisualizationMsg"
  (cl:format cl:nil "std_msgs/Header header~%# Namespace~%string ns~%~%# Provided by particle filter~%Pose2Df[] particles~%~%# Provided by navigation~%# Assumes that the last one in the list is the best option.~%PathVisualization[] path_options~%~%# Generic visualization types.~%ColoredPoint2D[] points~%ColoredLine2D[] lines~%ColoredArc2D[] arcs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: amrl_msgs/Pose2Df~%float32 x~%float32 y~%float32 theta~%================================================================================~%MSG: amrl_msgs/PathVisualization~%float32 curvature~%float32 distance~%float32 clearance~%================================================================================~%MSG: amrl_msgs/ColoredPoint2D~%Point2D point~%uint32 color~%================================================================================~%MSG: amrl_msgs/Point2D~%float32 x~%float32 y~%~%================================================================================~%MSG: amrl_msgs/ColoredLine2D~%Point2D p0~%Point2D p1~%uint32 color~%~%================================================================================~%MSG: amrl_msgs/ColoredArc2D~%# Circular arc section.~%Point2D center~%float32 radius~%float32 start_angle~%float32 end_angle~%uint32 color~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisualizationMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'ns))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'particles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_options) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lines) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arcs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisualizationMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'VisualizationMsg
    (cl:cons ':header (header msg))
    (cl:cons ':ns (ns msg))
    (cl:cons ':particles (particles msg))
    (cl:cons ':path_options (path_options msg))
    (cl:cons ':points (points msg))
    (cl:cons ':lines (lines msg))
    (cl:cons ':arcs (arcs msg))
))
