;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::data_port)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'data_port (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::DATA_PORT")
  (make-package "LSLIDAR_CX_DRIVER::DATA_PORT"))
(unless (find-package "LSLIDAR_CX_DRIVER::DATA_PORTREQUEST")
  (make-package "LSLIDAR_CX_DRIVER::DATA_PORTREQUEST"))
(unless (find-package "LSLIDAR_CX_DRIVER::DATA_PORTRESPONSE")
  (make-package "LSLIDAR_CX_DRIVER::DATA_PORTRESPONSE"))

(in-package "ROS")





(defclass lslidar_cx_driver::data_portRequest
  :super ros::object
  :slots (_data_port ))

(defmethod lslidar_cx_driver::data_portRequest
  (:init
   (&key
    ((:data_port __data_port) 0)
    )
   (send-super :init)
   (setq _data_port (round __data_port))
   self)
  (:data_port
   (&optional __data_port)
   (if __data_port (setq _data_port __data_port)) _data_port)
  (:serialization-length
   ()
   (+
    ;; int32 _data_port
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data_port
       (write-long _data_port s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data_port
     (setq _data_port (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lslidar_cx_driver::data_portResponse
  :super ros::object
  :slots (_result ))

(defmethod lslidar_cx_driver::data_portResponse
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

(defclass lslidar_cx_driver::data_port
  :super ros::object
  :slots ())

(setf (get lslidar_cx_driver::data_port :md5sum-) "f7cc218a25293cd22056167a1e74a99d")
(setf (get lslidar_cx_driver::data_port :datatype-) "lslidar_cx_driver/data_port")
(setf (get lslidar_cx_driver::data_port :request) lslidar_cx_driver::data_portRequest)
(setf (get lslidar_cx_driver::data_port :response) lslidar_cx_driver::data_portResponse)

(defmethod lslidar_cx_driver::data_portRequest
  (:response () (instance lslidar_cx_driver::data_portResponse :init)))

(setf (get lslidar_cx_driver::data_portRequest :md5sum-) "f7cc218a25293cd22056167a1e74a99d")
(setf (get lslidar_cx_driver::data_portRequest :datatype-) "lslidar_cx_driver/data_portRequest")
(setf (get lslidar_cx_driver::data_portRequest :definition-)
      "int32 data_port
---
bool result

")

(setf (get lslidar_cx_driver::data_portResponse :md5sum-) "f7cc218a25293cd22056167a1e74a99d")
(setf (get lslidar_cx_driver::data_portResponse :datatype-) "lslidar_cx_driver/data_portResponse")
(setf (get lslidar_cx_driver::data_portResponse :definition-)
      "int32 data_port
---
bool result

")



(provide :lslidar_cx_driver/data_port "f7cc218a25293cd22056167a1e74a99d")


