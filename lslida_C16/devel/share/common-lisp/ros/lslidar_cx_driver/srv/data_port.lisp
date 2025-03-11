; Auto-generated. Do not edit!


(cl:in-package lslidar_cx_driver-srv)


;//! \htmlinclude data_port-request.msg.html

(cl:defclass <data_port-request> (roslisp-msg-protocol:ros-message)
  ((data_port
    :reader data_port
    :initarg :data_port
    :type cl:integer
    :initform 0))
)

(cl:defclass data_port-request (<data_port-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_port-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_port-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<data_port-request> is deprecated: use lslidar_cx_driver-srv:data_port-request instead.")))

(cl:ensure-generic-function 'data_port-val :lambda-list '(m))
(cl:defmethod data_port-val ((m <data_port-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:data_port-val is deprecated.  Use lslidar_cx_driver-srv:data_port instead.")
  (data_port m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_port-request>) ostream)
  "Serializes a message object of type '<data_port-request>"
  (cl:let* ((signed (cl:slot-value msg 'data_port)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_port-request>) istream)
  "Deserializes a message object of type '<data_port-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_port) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_port-request>)))
  "Returns string type for a service object of type '<data_port-request>"
  "lslidar_cx_driver/data_portRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_port-request)))
  "Returns string type for a service object of type 'data_port-request"
  "lslidar_cx_driver/data_portRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_port-request>)))
  "Returns md5sum for a message object of type '<data_port-request>"
  "f7cc218a25293cd22056167a1e74a99d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_port-request)))
  "Returns md5sum for a message object of type 'data_port-request"
  "f7cc218a25293cd22056167a1e74a99d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_port-request>)))
  "Returns full string definition for message of type '<data_port-request>"
  (cl:format cl:nil "int32 data_port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_port-request)))
  "Returns full string definition for message of type 'data_port-request"
  (cl:format cl:nil "int32 data_port~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_port-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_port-request>))
  "Converts a ROS message object to a list"
  (cl:list 'data_port-request
    (cl:cons ':data_port (data_port msg))
))
;//! \htmlinclude data_port-response.msg.html

(cl:defclass <data_port-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass data_port-response (<data_port-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_port-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_port-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<data_port-response> is deprecated: use lslidar_cx_driver-srv:data_port-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <data_port-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:result-val is deprecated.  Use lslidar_cx_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_port-response>) ostream)
  "Serializes a message object of type '<data_port-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_port-response>) istream)
  "Deserializes a message object of type '<data_port-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_port-response>)))
  "Returns string type for a service object of type '<data_port-response>"
  "lslidar_cx_driver/data_portResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_port-response)))
  "Returns string type for a service object of type 'data_port-response"
  "lslidar_cx_driver/data_portResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_port-response>)))
  "Returns md5sum for a message object of type '<data_port-response>"
  "f7cc218a25293cd22056167a1e74a99d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_port-response)))
  "Returns md5sum for a message object of type 'data_port-response"
  "f7cc218a25293cd22056167a1e74a99d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_port-response>)))
  "Returns full string definition for message of type '<data_port-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_port-response)))
  "Returns full string definition for message of type 'data_port-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_port-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_port-response>))
  "Converts a ROS message object to a list"
  (cl:list 'data_port-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'data_port)))
  'data_port-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'data_port)))
  'data_port-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_port)))
  "Returns string type for a service object of type '<data_port>"
  "lslidar_cx_driver/data_port")