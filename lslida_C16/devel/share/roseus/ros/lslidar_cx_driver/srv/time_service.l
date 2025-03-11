;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::time_service)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'time_service (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::TIME_SERVICE")
  (make-package "LSLIDAR_CX_DRIVER::TIME_SERVICE"))
(unless (find-package "LSLIDAR_CX_DRIVER::TIME_SERVICEREQUEST")
  (make-package "LSLIDAR_CX_DRIVER::TIME_SERVICEREQUEST"))
(unless (find-package "LSLIDAR_CX_DRIVER::TIME_SERVICERESPONSE")
  (make-package "LSLIDAR_CX_DRIVER::TIME_SERVICERESPONSE"))

(in-package "ROS")





(defclass lslidar_cx_driver::time_serviceRequest
  :super ros::object
  :slots (_time_service_mode _ntp_ip ))

(defmethod lslidar_cx_driver::time_serviceRequest
  (:init
   (&key
    ((:time_service_mode __time_service_mode) "")
    ((:ntp_ip __ntp_ip) "")
    )
   (send-super :init)
   (setq _time_service_mode (string __time_service_mode))
   (setq _ntp_ip (string __ntp_ip))
   self)
  (:time_service_mode
   (&optional __time_service_mode)
   (if __time_service_mode (setq _time_service_mode __time_service_mode)) _time_service_mode)
  (:ntp_ip
   (&optional __ntp_ip)
   (if __ntp_ip (setq _ntp_ip __ntp_ip)) _ntp_ip)
  (:serialization-length
   ()
   (+
    ;; string _time_service_mode
    4 (length _time_service_mode)
    ;; string _ntp_ip
    4 (length _ntp_ip)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _time_service_mode
       (write-long (length _time_service_mode) s) (princ _time_service_mode s)
     ;; string _ntp_ip
       (write-long (length _ntp_ip) s) (princ _ntp_ip s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _time_service_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time_service_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ntp_ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ntp_ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lslidar_cx_driver::time_serviceResponse
  :super ros::object
  :slots (_result ))

(defmethod lslidar_cx_driver::time_serviceResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass lslidar_cx_driver::time_service
  :super ros::object
  :slots ())

(setf (get lslidar_cx_driver::time_service :md5sum-) "d498f138be97cecf5a5202b322fd6067")
(setf (get lslidar_cx_driver::time_service :datatype-) "lslidar_cx_driver/time_service")
(setf (get lslidar_cx_driver::time_service :request) lslidar_cx_driver::time_serviceRequest)
(setf (get lslidar_cx_driver::time_service :response) lslidar_cx_driver::time_serviceResponse)

(defmethod lslidar_cx_driver::time_serviceRequest
  (:response () (instance lslidar_cx_driver::time_serviceResponse :init)))

(setf (get lslidar_cx_driver::time_serviceRequest :md5sum-) "d498f138be97cecf5a5202b322fd6067")
(setf (get lslidar_cx_driver::time_serviceRequest :datatype-) "lslidar_cx_driver/time_serviceRequest")
(setf (get lslidar_cx_driver::time_serviceRequest :definition-)
      "string time_service_mode
string ntp_ip
---
bool result

")

(setf (get lslidar_cx_driver::time_serviceResponse :md5sum-) "d498f138be97cecf5a5202b322fd6067")
(setf (get lslidar_cx_driver::time_serviceResponse :datatype-) "lslidar_cx_driver/time_serviceResponse")
(setf (get lslidar_cx_driver::time_serviceResponse :definition-)
      "string time_service_mode
string ntp_ip
---
bool result

")



(provide :lslidar_cx_driver/time_service "d498f138be97cecf5a5202b322fd6067")


