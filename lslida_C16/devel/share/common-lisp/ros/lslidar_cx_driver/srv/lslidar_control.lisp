; Auto-generated. Do not edit!


(cl:in-package lslidar_cx_driver-srv)


;//! \htmlinclude lslidar_control-request.msg.html

(cl:defclass <lslidar_control-request> (roslisp-msg-protocol:ros-message)
  ((laser_control
    :reader laser_control
    :initarg :laser_control
    :type cl:integer
    :initform 0))
)

(cl:defclass lslidar_control-request (<lslidar_control-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lslidar_control-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lslidar_control-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<lslidar_control-request> is deprecated: use lslidar_cx_driver-srv:lslidar_control-request instead.")))

(cl:ensure-generic-function 'laser_control-val :lambda-list '(m))
(cl:defmethod laser_control-val ((m <lslidar_control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:laser_control-val is deprecated.  Use lslidar_cx_driver-srv:laser_control instead.")
  (laser_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lslidar_control-request>) ostream)
  "Serializes a message object of type '<lslidar_control-request>"
  (cl:let* ((signed (cl:slot-value msg 'laser_control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lslidar_control-request>) istream)
  "Deserializes a message object of type '<lslidar_control-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laser_control) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lslidar_control-request>)))
  "Returns string type for a service object of type '<lslidar_control-request>"
  "lslidar_cx_driver/lslidar_controlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lslidar_control-request)))
  "Returns string type for a service object of type 'lslidar_control-request"
  "lslidar_cx_driver/lslidar_controlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lslidar_control-request>)))
  "Returns md5sum for a message object of type '<lslidar_control-request>"
  "1e4c56296cb3b5595cee64c461c3d984")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lslidar_control-request)))
  "Returns md5sum for a message object of type 'lslidar_control-request"
  "1e4c56296cb3b5595cee64c461c3d984")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lslidar_control-request>)))
  "Returns full string definition for message of type '<lslidar_control-request>"
  (cl:format cl:nil "int32 laser_control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lslidar_control-request)))
  "Returns full string definition for message of type 'lslidar_control-request"
  (cl:format cl:nil "int32 laser_control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lslidar_control-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lslidar_control-request>))
  "Converts a ROS message object to a list"
  (cl:list 'lslidar_control-request
    (cl:cons ':laser_control (laser_control msg))
))
;//! \htmlinclude lslidar_control-response.msg.html

(cl:defclass <lslidar_control-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass lslidar_control-response (<lslidar_control-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lslidar_control-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lslidar_control-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_cx_driver-srv:<lslidar_control-response> is deprecated: use lslidar_cx_driver-srv:lslidar_control-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <lslidar_control-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_cx_driver-srv:result-val is deprecated.  Use lslidar_cx_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lslidar_control-response>) ostream)
  "Serializes a message object of type '<lslidar_control-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lslidar_control-response>) istream)
  "Deserializes a message object of type '<lslidar_control-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lslidar_control-response>)))
  "Returns string type for a service object of type '<lslidar_control-response>"
  "lslidar_cx_driver/lslidar_controlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lslidar_control-response)))
  "Returns string type for a service object of type 'lslidar_control-response"
  "lslidar_cx_driver/lslidar_controlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lslidar_control-response>)))
  "Returns md5sum for a message object of type '<lslidar_control-response>"
  "1e4c56296cb3b5595cee64c461c3d984")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lslidar_control-response)))
  "Returns md5sum for a message object of type 'lslidar_control-response"
  "1e4c56296cb3b5595cee64c461c3d984")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lslidar_control-response>)))
  "Returns full string definition for message of type '<lslidar_control-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lslidar_control-response)))
  "Returns full string definition for message of type 'lslidar_control-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lslidar_control-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lslidar_control-response>))
  "Converts a ROS message object to a list"
  (cl:list 'lslidar_control-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'lslidar_control)))
  'lslidar_control-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'lslidar_control)))
  'lslidar_control-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lslidar_control)))
  "Returns string type for a service object of type '<lslidar_control>"
  "lslidar_cx_driver/lslidar_control")