; Auto-generated. Do not edit!


(cl:in-package lslidar_cx_driver-srv)


;//! \htmlinclude time_service-request.msg.html

(cl:defclass <time_service-request> (roslisp-msg-protocol:ros-message)
  ((time_service_mode
    :reader time_service_mode
    :initarg :time_service_mode
    :type cl:string
    :initform "")
   (ntp_ip
    :reader ntp_ip
    :initarg :ntp_ip
    :type cl:string
    :initform ""))
)

(cl:defclass time_service-request (<time_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <time_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'time_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<time_service-request> is deprecated: use lslidar_cx_driver-srv:time_service-request instead.")))

(cl:ensure-generic-function 'time_service_mode-val :lambda-list '(m))
(cl:defmethod time_service_mode-val ((m <time_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:time_service_mode-val is deprecated.  Use lslidar_cx_driver-srv:time_service_mode instead.")
  (time_service_mode m))

(cl:ensure-generic-function 'ntp_ip-val :lambda-list '(m))
(cl:defmethod ntp_ip-val ((m <time_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:ntp_ip-val is deprecated.  Use lslidar_cx_driver-srv:ntp_ip instead.")
  (ntp_ip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <time_service-request>) ostream)
  "Serializes a message object of type '<time_service-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time_service_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time_service_mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ntp_ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ntp_ip))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <time_service-request>) istream)
  "Deserializes a message object of type '<time_service-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_service_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time_service_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ntp_ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ntp_ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<time_service-request>)))
  "Returns string type for a service object of type '<time_service-request>"
  "lslidar_cx_driver/time_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'time_service-request)))
  "Returns string type for a service object of type 'time_service-request"
  "lslidar_cx_driver/time_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<time_service-request>)))
  "Returns md5sum for a message object of type '<time_service-request>"
  "d498f138be97cecf5a5202b322fd6067")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'time_service-request)))
  "Returns md5sum for a message object of type 'time_service-request"
  "d498f138be97cecf5a5202b322fd6067")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<time_service-request>)))
  "Returns full string definition for message of type '<time_service-request>"
  (cl:format cl:nil "string time_service_mode~%string ntp_ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'time_service-request)))
  "Returns full string definition for message of type 'time_service-request"
  (cl:format cl:nil "string time_service_mode~%string ntp_ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <time_service-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'time_service_mode))
     4 (cl:length (cl:slot-value msg 'ntp_ip))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <time_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'time_service-request
    (cl:cons ':time_service_mode (time_service_mode msg))
    (cl:cons ':ntp_ip (ntp_ip msg))
))
;//! \htmlinclude time_service-response.msg.html

(cl:defclass <time_service-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass time_service-response (<time_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <time_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'time_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<time_service-response> is deprecated: use lslidar_cx_driver-srv:time_service-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <time_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:result-val is deprecated.  Use lslidar_cx_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <time_service-response>) ostream)
  "Serializes a message object of type '<time_service-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <time_service-response>) istream)
  "Deserializes a message object of type '<time_service-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<time_service-response>)))
  "Returns string type for a service object of type '<time_service-response>"
  "lslidar_cx_driver/time_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'time_service-response)))
  "Returns string type for a service object of type 'time_service-response"
  "lslidar_cx_driver/time_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<time_service-response>)))
  "Returns md5sum for a message object of type '<time_service-response>"
  "d498f138be97cecf5a5202b322fd6067")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'time_service-response)))
  "Returns md5sum for a message object of type 'time_service-response"
  "d498f138be97cecf5a5202b322fd6067")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<time_service-response>)))
  "Returns full string definition for message of type '<time_service-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'time_service-response)))
  "Returns full string definition for message of type 'time_service-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <time_service-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <time_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'time_service-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'time_service)))
  'time_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'time_service)))
  'time_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'time_service)))
  "Returns string type for a service object of type '<time_service>"
  "lslidar_cx_driver/time_service")