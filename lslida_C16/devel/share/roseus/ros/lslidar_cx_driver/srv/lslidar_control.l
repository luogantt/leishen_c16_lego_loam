;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::lslidar_control)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'lslidar_control (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::LSLIDAR_CONTROL")
  (make-package "LSLIDAR_CX_DRIVER::LSLIDAR_CONTROL"))
(unless (find-package "LSLIDAR_CX_DRIVER::LSLIDAR_CONTROLREQUEST")
  (make-package "LSLIDAR_CX_DRIVER::LSLIDAR_CONTROLREQUEST"))
(unless (find-package "LSLIDAR_CX_DRIVER::LSLIDAR_CONTROLRESPONSE")
  (make-package "LSLIDAR_CX_DRIVER::LSLIDAR_CONTROLRESPONSE"))

(in-package "ROS")





(defclass lslidar_cx_driver::lslidar_controlRequest
  :super ros::object
  :slots (_laser_control ))

(defmethod lslidar_cx_driver::lslidar_controlRequest
  (:init
   (&key
    ((:laser_control __laser_control) 0)
    )
   (send-super :init)
   (setq _laser_control (round __laser_control))
   self)
  (:laser_control
   (&optional __laser_control)
   (if __laser_control (setq _laser_control __laser_control)) _laser_control)
  (:serialization-length
   ()
   (+
    ;; int32 _laser_control
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _laser_control
       (write-long _laser_control s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _laser_control
     (setq _laser_control (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lslidar_cx_driver::lslidar_controlResponse
  :super ros::object
  :slots (_result ))

(defmethod lslidar_cx_driver::lslidar_controlResponse
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

(defclass lslidar_cx_driver::lslidar_control
  :super ros::object
  :slots ())

(setf (get lslidar_cx_driver::lslidar_control :md5sum-) "1e4c56296cb3b5595cee64c461c3d984")
(setf (get lslidar_cx_driver::lslidar_control :datatype-) "lslidar_cx_driver/lslidar_control")
(setf (get lslidar_cx_driver::lslidar_control :request) lslidar_cx_driver::lslidar_controlRequest)
(setf (get lslidar_cx_driver::lslidar_control :response) lslidar_cx_driver::lslidar_controlResponse)

(defmethod lslidar_cx_driver::lslidar_controlRequest
  (:response () (instance lslidar_cx_driver::lslidar_controlResponse :init)))

(setf (get lslidar_cx_driver::lslidar_controlRequest :md5sum-) "1e4c56296cb3b5595cee64c461c3d984")
(setf (get lslidar_cx_driver::lslidar_controlRequest :datatype-) "lslidar_cx_driver/lslidar_controlRequest")
(setf (get lslidar_cx_driver::lslidar_controlRequest :definition-)
      "int32 laser_control
---
bool result

")

(setf (get lslidar_cx_driver::lslidar_controlResponse :md5sum-) "1e4c56296cb3b5595cee64c461c3d984")
(setf (get lslidar_cx_driver::lslidar_controlResponse :datatype-) "lslidar_cx_driver/lslidar_controlResponse")
(setf (get lslidar_cx_driver::lslidar_controlResponse :definition-)
      "int32 laser_control
---
bool result

")



(provide :lslidar_cx_driver/lslidar_control "1e4c56296cb3b5595cee64c461c3d984")


