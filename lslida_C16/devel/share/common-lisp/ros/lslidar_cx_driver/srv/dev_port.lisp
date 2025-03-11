; Auto-generated. Do not edit!


(cl:in-package lslidar_cx_driver-srv)


;//! \htmlinclude dev_port-request.msg.html

(cl:defclass <dev_port-request> (roslisp-msg-protocol:ros-message)
  ((dev_port
    :reader dev_port
    :initarg :dev_port
    :type cl:integer
    :initform 0))
)

(cl:defclass dev_port-request (<dev_port-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dev_port-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dev_port-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<dev_port-request> is deprecated: use lslidar_cx_driver-srv:dev_port-request instead.")))

(cl:ensure-generic-function 'dev_port-val :lambda-list '(m))
(cl:defmethod dev_port-val ((m <dev_port-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:dev_port-val is deprecated.  Use lslidar_cx_driver-srv:dev_port instead.")
  (dev_port m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dev_port-request>) ostream)
  "Serializes a message object of type '<dev_port-request>"
  (cl:let* ((signed (cl:slot-value msg 'dev_port)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dev_port-request>) istream)
  "Deserializes a message object of type '<dev_port-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dev_port) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dev_port-request>)))
  "Returns string type for a service object of type '<dev_port-request>"
  "lslidar_cx_driver/dev_portRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dev_port-request)))
  "Returns string type for a service object of type 'dev_port-request"
  "lslidar_cx_driver/dev_portRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dev_port-request>)))
  "Returns md5sum for a message object of type '<dev_port-request>"
  "32021ff41fc7cf8288a9fab2c85d7baf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dev_port-request)))
  "Returns md5sum for a message object of type 'dev_port-request"
  "32021ff41fc7cf8288a9fab2c85d7baf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dev_port-request>)))
  "Returns full string definition for message of type '<dev_port-request>"
  (cl:format cl:nil "int32 dev_port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dev_port-request)))
  "Returns full string definition for message of type 'dev_port-request"
  (cl:format cl:nil "int32 dev_port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dev_port-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dev_port-request>))
  "Converts a ROS message object to a list"
  (cl:list 'dev_port-request
    (cl:cons ':dev_port (dev_port msg))
))
;//! \htmlinclude dev_port-response.msg.html

(cl:defclass <dev_port-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass dev_port-response (<dev_port-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dev_port-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dev_port-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<dev_port-response> is deprecated: use lslidar_cx_driver-srv:dev_port-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <dev_port-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:result-val is deprecated.  Use lslidar_cx_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dev_port-response>) ostream)
  "Serializes a message object of type '<dev_port-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dev_port-response>) istream)
  "Deserializes a message object of type '<dev_port-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dev_port-response>)))
  "Returns string type for a service object of type '<dev_port-response>"
  "lslidar_cx_driver/dev_portResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dev_port-response)))
  "Returns string type for a service object of type 'dev_port-response"
  "lslidar_cx_driver/dev_portResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dev_port-response>)))
  "Returns md5sum for a message object of type '<dev_port-response>"
  "32021ff41fc7cf8288a9fab2c85d7baf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dev_port-response)))
  "Returns md5sum for a message object of type 'dev_port-response"
  "32021ff41fc7cf8288a9fab2c85d7baf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dev_port-response>)))
  "Returns full string definition for message of type '<dev_port-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dev_port-response)))
  "Returns full string definition for message of type 'dev_port-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dev_port-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dev_port-response>))
  "Converts a ROS message object to a list"
  (cl:list 'dev_port-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'dev_port)))
  'dev_port-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'dev_port)))
  'dev_port-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dev_port)))
  "Returns string type for a service object of type '<dev_port>"
  "lslidar_cx_driver/dev_port")