; Auto-generated. Do not edit!


(cl:in-package lslidar_cx_driver-srv)


;//! \htmlinclude data_ip-request.msg.html

(cl:defclass <data_ip-request> (roslisp-msg-protocol:ros-message)
  ((data_ip
    :reader data_ip
    :initarg :data_ip
    :type cl:string
    :initform ""))
)

(cl:defclass data_ip-request (<data_ip-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_ip-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_ip-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<data_ip-request> is deprecated: use lslidar_cx_driver-srv:data_ip-request instead.")))

(cl:ensure-generic-function 'data_ip-val :lambda-list '(m))
(cl:defmethod data_ip-val ((m <data_ip-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:data_ip-val is deprecated.  Use lslidar_cx_driver-srv:data_ip instead.")
  (data_ip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_ip-request>) ostream)
  "Serializes a message object of type '<data_ip-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data_ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data_ip))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_ip-request>) istream)
  "Deserializes a message object of type '<data_ip-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data_ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_ip-request>)))
  "Returns string type for a service object of type '<data_ip-request>"
  "lslidar_cx_driver/data_ipRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_ip-request)))
  "Returns string type for a service object of type 'data_ip-request"
  "lslidar_cx_driver/data_ipRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_ip-request>)))
  "Returns md5sum for a message object of type '<data_ip-request>"
  "677773e65c76c0258fca5e834bbd1dcd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_ip-request)))
  "Returns md5sum for a message object of type 'data_ip-request"
  "677773e65c76c0258fca5e834bbd1dcd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_ip-request>)))
  "Returns full string definition for message of type '<data_ip-request>"
  (cl:format cl:nil "string data_ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_ip-request)))
  "Returns full string definition for message of type 'data_ip-request"
  (cl:format cl:nil "string data_ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_ip-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data_ip))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_ip-request>))
  "Converts a ROS message object to a list"
  (cl:list 'data_ip-request
    (cl:cons ':data_ip (data_ip msg))
))
;//! \htmlinclude data_ip-response.msg.html

(cl:defclass <data_ip-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass data_ip-response (<data_ip-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_ip-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_ip-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<data_ip-response> is deprecated: use lslidar_cx_driver-srv:data_ip-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <data_ip-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:result-val is deprecated.  Use lslidar_cx_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_ip-response>) ostream)
  "Serializes a message object of type '<data_ip-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_ip-response>) istream)
  "Deserializes a message object of type '<data_ip-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_ip-response>)))
  "Returns string type for a service object of type '<data_ip-response>"
  "lslidar_cx_driver/data_ipResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_ip-response)))
  "Returns string type for a service object of type 'data_ip-response"
  "lslidar_cx_driver/data_ipResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_ip-response>)))
  "Returns md5sum for a message object of type '<data_ip-response>"
  "677773e65c76c0258fca5e834bbd1dcd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_ip-response)))
  "Returns md5sum for a message object of type 'data_ip-response"
  "677773e65c76c0258fca5e834bbd1dcd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_ip-response>)))
  "Returns full string definition for message of type '<data_ip-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_ip-response)))
  "Returns full string definition for message of type 'data_ip-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_ip-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_ip-response>))
  "Converts a ROS message object to a list"
  (cl:list 'data_ip-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'data_ip)))
  'data_ip-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'data_ip)))
  'data_ip-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_ip)))
  "Returns string type for a service object of type '<data_ip>"
  "lslidar_cx_driver/data_ip")