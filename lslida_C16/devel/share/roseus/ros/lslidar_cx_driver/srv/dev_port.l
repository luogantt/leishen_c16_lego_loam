;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::dev_port)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'dev_port (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::DEV_PORT")
  (make-package "LSLIDAR_CX_DRIVER::DEV_PORT"))
(unless (find-package "LSLIDAR_CX_DRIVER::DEV_PORTREQUEST")
  (make-package "LSLIDAR_CX_DRIVER::DEV_PORTREQUEST"))
(unless (find-package "LSLIDAR_CX_DRIVER::DEV_PORTRESPONSE")
  (make-package "LSLIDAR_CX_DRIVER::DEV_PORTRESPONSE"))

(in-package "ROS")





(defclass lslidar_cx_driver::dev_portRequest
  :super ros::object
  :slots (_dev_port ))

(defmethod lslidar_cx_driver::dev_portRequest
  (:init
   (&key
    ((:dev_port __dev_port) 0)
    )
   (send-super :init)
   (setq _dev_port (round __dev_port))
   self)
  (:dev_port
   (&optional __dev_port)
   (if __dev_port (setq _dev_port __dev_port)) _dev_port)
  (:serialization-length
   ()
   (+
    ;; int32 _dev_port
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _dev_port
       (write-long _dev_port s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _dev_port
     (setq _dev_port (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lslidar_cx_driver::dev_portResponse
  :super ros::object
  :slots (_result ))

(defmethod lslidar_cx_driver::dev_portResponse
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

(defclass lslidar_cx_driver::dev_port
  :super ros::object
  :slots ())

(setf (get lslidar_cx_driver::dev_port :md5sum-) "32021ff41fc7cf8288a9fab2c85d7baf")
(setf (get lslidar_cx_driver::dev_port :datatype-) "lslidar_cx_driver/dev_port")
(setf (get lslidar_cx_driver::dev_port :request) lslidar_cx_driver::dev_portRequest)
(setf (get lslidar_cx_driver::dev_port :response) lslidar_cx_driver::dev_portResponse)

(defmethod lslidar_cx_driver::dev_portRequest
  (:response () (instance lslidar_cx_driver::dev_portResponse :init)))

(setf (get lslidar_cx_driver::dev_portRequest :md5sum-) "32021ff41fc7cf8288a9fab2c85d7baf")
(setf (get lslidar_cx_driver::dev_portRequest :datatype-) "lslidar_cx_driver/dev_portRequest")
(setf (get lslidar_cx_driver::dev_portRequest :definition-)
      "int32 dev_port
---
bool result

")

(setf (get lslidar_cx_driver::dev_portResponse :md5sum-) "32021ff41fc7cf8288a9fab2c85d7baf")
(setf (get lslidar_cx_driver::dev_portResponse :datatype-) "lslidar_cx_driver/dev_portResponse")
(setf (get lslidar_cx_driver::dev_portResponse :definition-)
      "int32 dev_port
---
bool result

")



(provide :lslidar_cx_driver/dev_port "32021ff41fc7cf8288a9fab2c85d7baf")


