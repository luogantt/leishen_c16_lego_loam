; Auto-generated. Do not edit!


(cl:in-package lslidar_cx_driver-srv)


;//! \htmlinclude destination_ip-request.msg.html

(cl:defclass <destination_ip-request> (roslisp-msg-protocol:ros-message)
  ((destination_ip
    :reader destination_ip
    :initarg :destination_ip
    :type cl:string
    :initform ""))
)

(cl:defclass destination_ip-request (<destination_ip-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <destination_ip-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'destination_ip-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<destination_ip-request> is deprecated: use lslidar_cx_driver-srv:destination_ip-request instead.")))

(cl:ensure-generic-function 'destination_ip-val :lambda-list '(m))
(cl:defmethod destination_ip-val ((m <destination_ip-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:destination_ip-val is deprecated.  Use lslidar_cx_driver-srv:destination_ip instead.")
  (destination_ip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <destination_ip-request>) ostream)
  "Serializes a message object of type '<destination_ip-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destination_ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destination_ip))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <destination_ip-request>) istream)
  "Deserializes a message object of type '<destination_ip-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destination_ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destination_ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<destination_ip-request>)))
  "Returns string type for a service object of type '<destination_ip-request>"
  "lslidar_cx_driver/destination_ipRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'destination_ip-request)))
  "Returns string type for a service object of type 'destination_ip-request"
  "lslidar_cx_driver/destination_ipRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<destination_ip-request>)))
  "Returns md5sum for a message object of type '<destination_ip-request>"
  "d55eccace2459e94905f4ace3f72685a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'destination_ip-request)))
  "Returns md5sum for a message object of type 'destination_ip-request"
  "d55eccace2459e94905f4ace3f72685a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<destination_ip-request>)))
  "Returns full string definition for message of type '<destination_ip-request>"
  (cl:format cl:nil "string destination_ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'destination_ip-request)))
  "Returns full string definition for message of type 'destination_ip-request"
  (cl:format cl:nil "string destination_ip~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <destination_ip-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'destination_ip))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <destination_ip-request>))
  "Converts a ROS message object to a list"
  (cl:list 'destination_ip-request
    (cl:cons ':destination_ip (destination_ip msg))
))
;//! \htmlinclude destination_ip-response.msg.html

(cl:defclass <destination_ip-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass destination_ip-response (<destination_ip-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <destination_ip-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'destination_ip-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<destination_ip-response> is deprecated: use lslidar_cx_driver-srv:destination_ip-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <destination_ip-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:result-val is deprecated.  Use lslidar_cx_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <destination_ip-response>) ostream)
  "Serializes a message object of type '<destination_ip-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <destination_ip-response>) istream)
  "Deserializes a message object of type '<destination_ip-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<destination_ip-response>)))
  "Returns string type for a service object of type '<destination_ip-response>"
  "lslidar_cx_driver/destination_ipResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'destination_ip-response)))
  "Returns string type for a service object of type 'destination_ip-response"
  "lslidar_cx_driver/destination_ipResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<destination_ip-response>)))
  "Returns md5sum for a message object of type '<destination_ip-response>"
  "d55eccace2459e94905f4ace3f72685a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'destination_ip-response)))
  "Returns md5sum for a message object of type 'destination_ip-response"
  "d55eccace2459e94905f4ace3f72685a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<destination_ip-response>)))
  "Returns full string definition for message of type '<destination_ip-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'destination_ip-response)))
  "Returns full string definition for message of type 'destination_ip-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <destination_ip-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <destination_ip-response>))
  "Converts a ROS message object to a list"
  (cl:list 'destination_ip-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'destination_ip)))
  'destination_ip-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'destination_ip)))
  'destination_ip-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'destination_ip)))
  "Returns string type for a service object of type '<destination_ip>"
  "lslidar_cx_driver/destination_ip")