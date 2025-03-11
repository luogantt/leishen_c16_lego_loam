;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::data_ip)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'data_ip (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::DATA_IP")
  (make-package "LSLIDAR_CX_DRIVER::DATA_IP"))
(unless (find-package "LSLIDAR_CX_DRIVER::DATA_IPREQUEST")
  (make-package "LSLIDAR_CX_DRIVER::DATA_IPREQUEST"))
(unless (find-package "LSLIDAR_CX_DRIVER::DATA_IPRESPONSE")
  (make-package "LSLIDAR_CX_DRIVER::DATA_IPRESPONSE"))

(in-package "ROS")





(defclass lslidar_cx_driver::data_ipRequest
  :super ros::object
  :slots (_data_ip ))

(defmethod lslidar_cx_driver::data_ipRequest
  (:init
   (&key
    ((:data_ip __data_ip) "")
    )
   (send-super :init)
   (setq _data_ip (string __data_ip))
   self)
  (:data_ip
   (&optional __data_ip)
   (if __data_ip (setq _data_ip __data_ip)) _data_ip)
  (:serialization-length
   ()
   (+
    ;; string _data_ip
    4 (length _data_ip)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data_ip
       (write-long (length _data_ip) s) (princ _data_ip s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data_ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lslidar_cx_driver::data_ipResponse
  :super ros::object
  :slots (_result ))

(defmethod lslidar_cx_driver::data_ipResponse
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

(defclass lslidar_cx_driver::data_ip
  :super ros::object
  :slots ())

(setf (get lslidar_cx_driver::data_ip :md5sum-) "677773e65c76c0258fca5e834bbd1dcd")
(setf (get lslidar_cx_driver::data_ip :datatype-) "lslidar_cx_driver/data_ip")
(setf (get lslidar_cx_driver::data_ip :request) lslidar_cx_driver::data_ipRequest)
(setf (get lslidar_cx_driver::data_ip :response) lslidar_cx_driver::data_ipResponse)

(defmethod lslidar_cx_driver::data_ipRequest
  (:response () (instance lslidar_cx_driver::data_ipResponse :init)))

(setf (get lslidar_cx_driver::data_ipRequest :md5sum-) "677773e65c76c0258fca5e834bbd1dcd")
(setf (get lslidar_cx_driver::data_ipRequest :datatype-) "lslidar_cx_driver/data_ipRequest")
(setf (get lslidar_cx_driver::data_ipRequest :definition-)
      "string data_ip
---
bool result

")

(setf (get lslidar_cx_driver::data_ipResponse :md5sum-) "677773e65c76c0258fca5e834bbd1dcd")
(setf (get lslidar_cx_driver::data_ipResponse :datatype-) "lslidar_cx_driver/data_ipResponse")
(setf (get lslidar_cx_driver::data_ipResponse :definition-)
      "string data_ip
---
bool result

")



(provide :lslidar_cx_driver/data_ip "677773e65c76c0258fca5e834bbd1dcd")


