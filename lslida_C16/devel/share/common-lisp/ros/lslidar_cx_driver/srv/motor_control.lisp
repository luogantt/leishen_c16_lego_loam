; Auto-generated. Do not edit!


(cl:in-package lslidar_cx_driver-srv)


;//! \htmlinclude motor_control-request.msg.html

(cl:defclass <motor_control-request> (roslisp-msg-protocol:ros-message)
  ((motor_control
    :reader motor_control
    :initarg :motor_control
    :type cl:integer
    :initform 0))
)

(cl:defclass motor_control-request (<motor_control-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_control-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_control-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<motor_control-request> is deprecated: use lslidar_cx_driver-srv:motor_control-request instead.")))

(cl:ensure-generic-function 'motor_control-val :lambda-list '(m))
(cl:defmethod motor_control-val ((m <motor_control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:motor_control-val is deprecated.  Use lslidar_cx_driver-srv:motor_control instead.")
  (motor_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_control-request>) ostream)
  "Serializes a message object of type '<motor_control-request>"
  (cl:let* ((signed (cl:slot-value msg 'motor_control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_control-request>) istream)
  "Deserializes a message object of type '<motor_control-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_control) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_control-request>)))
  "Returns string type for a service object of type '<motor_control-request>"
  "lslidar_cx_driver/motor_controlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_control-request)))
  "Returns string type for a service object of type 'motor_control-request"
  "lslidar_cx_driver/motor_controlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_control-request>)))
  "Returns md5sum for a message object of type '<motor_control-request>"
  "307d227221bb36a842541608aa239174")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_control-request)))
  "Returns md5sum for a message object of type 'motor_control-request"
  "307d227221bb36a842541608aa239174")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_control-request>)))
  "Returns full string definition for message of type '<motor_control-request>"
  (cl:format cl:nil "int32 motor_control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_control-request)))
  "Returns full string definition for message of type 'motor_control-request"
  (cl:format cl:nil "int32 motor_control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_control-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_control-request>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_control-request
    (cl:cons ':motor_control (motor_control msg))
))
;//! \htmlinclude motor_control-response.msg.html

(cl:defclass <motor_control-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass motor_control-response (<motor_control-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_control-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_control-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<motor_control-response> is deprecated: use lslidar_cx_driver-srv:motor_control-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <motor_control-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:result-val is deprecated.  Use lslidar_cx_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_control-response>) ostream)
  "Serializes a message object of type '<motor_control-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_control-response>) istream)
  "Deserializes a message object of type '<motor_control-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_control-response>)))
  "Returns string type for a service object of type '<motor_control-response>"
  "lslidar_cx_driver/motor_controlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_control-response)))
  "Returns string type for a service object of type 'motor_control-response"
  "lslidar_cx_driver/motor_controlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_control-response>)))
  "Returns md5sum for a message object of type '<motor_control-response>"
  "307d227221bb36a842541608aa239174")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_control-response)))
  "Returns md5sum for a message object of type 'motor_control-response"
  "307d227221bb36a842541608aa239174")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_control-response>)))
  "Returns full string definition for message of type '<motor_control-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_control-response)))
  "Returns full string definition for message of type 'motor_control-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_control-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_control-response>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_control-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'motor_control)))
  'motor_control-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'motor_control)))
  'motor_control-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_control)))
  "Returns string type for a service object of type '<motor_control>"
  "lslidar_cx_driver/motor_control")