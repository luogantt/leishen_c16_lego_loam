; Auto-generated. Do not edit!


(cl:in-package lslidar_cx_driver-srv)


;//! \htmlinclude motor_speed-request.msg.html

(cl:defclass <motor_speed-request> (roslisp-msg-protocol:ros-message)
  ((motor_speed
    :reader motor_speed
    :initarg :motor_speed
    :type cl:integer
    :initform 0))
)

(cl:defclass motor_speed-request (<motor_speed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_speed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_speed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<motor_speed-request> is deprecated: use lslidar_cx_driver-srv:motor_speed-request instead.")))

(cl:ensure-generic-function 'motor_speed-val :lambda-list '(m))
(cl:defmethod motor_speed-val ((m <motor_speed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:motor_speed-val is deprecated.  Use lslidar_cx_driver-srv:motor_speed instead.")
  (motor_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_speed-request>) ostream)
  "Serializes a message object of type '<motor_speed-request>"
  (cl:let* ((signed (cl:slot-value msg 'motor_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_speed-request>) istream)
  "Deserializes a message object of type '<motor_speed-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_speed-request>)))
  "Returns string type for a service object of type '<motor_speed-request>"
  "lslidar_cx_driver/motor_speedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_speed-request)))
  "Returns string type for a service object of type 'motor_speed-request"
  "lslidar_cx_driver/motor_speedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_speed-request>)))
  "Returns md5sum for a message object of type '<motor_speed-request>"
  "3a44aee86421f5746f51f262cc2e693f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_speed-request)))
  "Returns md5sum for a message object of type 'motor_speed-request"
  "3a44aee86421f5746f51f262cc2e693f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_speed-request>)))
  "Returns full string definition for message of type '<motor_speed-request>"
  (cl:format cl:nil "int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_speed-request)))
  "Returns full string definition for message of type 'motor_speed-request"
  (cl:format cl:nil "int32 motor_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_speed-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_speed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_speed-request
    (cl:cons ':motor_speed (motor_speed msg))
))
;//! \htmlinclude motor_speed-response.msg.html

(cl:defclass <motor_speed-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass motor_speed-response (<motor_speed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_speed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_speed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<motor_speed-response> is deprecated: use lslidar_cx_driver-srv:motor_speed-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <motor_speed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:result-val is deprecated.  Use lslidar_cx_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_speed-response>) ostream)
  "Serializes a message object of type '<motor_speed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_speed-response>) istream)
  "Deserializes a message object of type '<motor_speed-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_speed-response>)))
  "Returns string type for a service object of type '<motor_speed-response>"
  "lslidar_cx_driver/motor_speedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_speed-response)))
  "Returns string type for a service object of type 'motor_speed-response"
  "lslidar_cx_driver/motor_speedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_speed-response>)))
  "Returns md5sum for a message object of type '<motor_speed-response>"
  "3a44aee86421f5746f51f262cc2e693f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_speed-response)))
  "Returns md5sum for a message object of type 'motor_speed-response"
  "3a44aee86421f5746f51f262cc2e693f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_speed-response>)))
  "Returns full string definition for message of type '<motor_speed-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_speed-response)))
  "Returns full string definition for message of type 'motor_speed-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_speed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_speed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_speed-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'motor_speed)))
  'motor_speed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'motor_speed)))
  'motor_speed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_speed)))
  "Returns string type for a service object of type '<motor_speed>"
  "lslidar_cx_driver/motor_speed")