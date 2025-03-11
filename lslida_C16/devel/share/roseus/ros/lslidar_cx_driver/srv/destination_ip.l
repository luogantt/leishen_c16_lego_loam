;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::destination_ip)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'destination_ip (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::DESTINATION_IP")
  (make-package "LSLIDAR_CX_DRIVER::DESTINATION_IP"))
(unless (find-package "LSLIDAR_CX_DRIVER::DESTINATION_IPREQUEST")
  (make-package "LSLIDAR_CX_DRIVER::DESTINATION_IPREQUEST"))
(unless (find-package "LSLIDAR_CX_DRIVER::DESTINATION_IPRESPONSE")
  (make-package "LSLIDAR_CX_DRIVER::DESTINATION_IPRESPONSE"))

(in-package "ROS")





(defclass lslidar_cx_driver::destination_ipRequest
  :super ros::object
  :slots (_destination_ip ))

(defmethod lslidar_cx_driver::destination_ipRequest
  (:init
   (&key
    ((:destination_ip __destination_ip) "")
    )
   (send-super :init)
   (setq _destination_ip (string __destination_ip))
   self)
  (:destination_ip
   (&optional __destination_ip)
   (if __destination_ip (setq _destination_ip __destination_ip)) _destination_ip)
  (:serialization-length
   ()
   (+
    ;; string _destination_ip
    4 (length _destination_ip)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _destination_ip
       (write-long (length _destination_ip) s) (princ _destination_ip s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _destination_ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destination_ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lslidar_cx_driver::destination_ipResponse
  :super ros::object
  :slots (_result ))

(defmethod lslidar_cx_driver::destination_ipResponse
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

(defclass lslidar_cx_driver::destination_ip
  :super ros::object
  :slots ())

(setf (get lslidar_cx_driver::destination_ip :md5sum-) "d55eccace2459e94905f4ace3f72685a")
(setf (get lslidar_cx_driver::destination_ip :datatype-) "lslidar_cx_driver/destination_ip")
(setf (get lslidar_cx_driver::destination_ip :request) lslidar_cx_driver::destination_ipRequest)
(setf (get lslidar_cx_driver::destination_ip :response) lslidar_cx_driver::destination_ipResponse)

(defmethod lslidar_cx_driver::destination_ipRequest
  (:response () (instance lslidar_cx_driver::destination_ipResponse :init)))

(setf (get lslidar_cx_driver::destination_ipRequest :md5sum-) "d55eccace2459e94905f4ace3f72685a")
(setf (get lslidar_cx_driver::destination_ipRequest :datatype-) "lslidar_cx_driver/destination_ipRequest")
(setf (get lslidar_cx_driver::destination_ipRequest :definition-)
      "string destination_ip
---
bool result

")

(setf (get lslidar_cx_driver::destination_ipResponse :md5sum-) "d55eccace2459e94905f4ace3f72685a")
(setf (get lslidar_cx_driver::destination_ipResponse :datatype-) "lslidar_cx_driver/destination_ipResponse")
(setf (get lslidar_cx_driver::destination_ipResponse :definition-)
      "string destination_ip
---
bool result

")



(provide :lslidar_cx_driver/destination_ip "d55eccace2459e94905f4ace3f72685a")


