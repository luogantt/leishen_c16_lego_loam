;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::remove_control)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'remove_control (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::REMOVE_CONTROL")
  (make-package "LSLIDAR_CX_DRIVER::REMOVE_CONTROL"))
(unless (find-package "LSLIDAR_CX_DRIVER::REMOVE_CONTROLREQUEST")
  (make-package "LSLIDAR_CX_DRIVER::REMOVE_CONTROLREQUEST"))
(unless (find-package "LSLIDAR_CX_DRIVER::REMOVE_CONTROLRESPONSE")
  (make-package "LSLIDAR_CX_DRIVER::REMOVE_CONTROLRESPONSE"))

(in-package "ROS")





(defclass lslidar_cx_driver::remove_controlRequest
  :super ros::object
  :slots (_remove_control ))

(defmethod lslidar_cx_driver::remove_controlRequest
  (:init
   (&key
    ((:remove_control __remove_control) 0)
    )
   (send-super :init)
   (setq _remove_control (round __remove_control))
   self)
  (:remove_control
   (&optional __remove_control)
   (if __remove_control (setq _remove_control __remove_control)) _remove_control)
  (:serialization-length
   ()
   (+
    ;; int32 _remove_control
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _remove_control
       (write-long _remove_control s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _remove_control
     (setq _remove_control (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lslidar_cx_driver::remove_controlResponse
  :super ros::object
  :slots (_result ))

(defmethod lslidar_cx_driver::remove_controlResponse
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

(defclass lslidar_cx_driver::remove_control
  :super ros::object
  :slots ())

(setf (get lslidar_cx_driver::remove_control :md5sum-) "bdd6a9c7cf1a09e7831f35133efa0e8b")
(setf (get lslidar_cx_driver::remove_control :datatype-) "lslidar_cx_driver/remove_control")
(setf (get lslidar_cx_driver::remove_control :request) lslidar_cx_driver::remove_controlRequest)
(setf (get lslidar_cx_driver::remove_control :response) lslidar_cx_driver::remove_controlResponse)

(defmethod lslidar_cx_driver::remove_controlRequest
  (:response () (instance lslidar_cx_driver::remove_controlResponse :init)))

(setf (get lslidar_cx_driver::remove_controlRequest :md5sum-) "bdd6a9c7cf1a09e7831f35133efa0e8b")
(setf (get lslidar_cx_driver::remove_controlRequest :datatype-) "lslidar_cx_driver/remove_controlRequest")
(setf (get lslidar_cx_driver::remove_controlRequest :definition-)
      "int32 remove_control
---
bool result

")

(setf (get lslidar_cx_driver::remove_controlResponse :md5sum-) "bdd6a9c7cf1a09e7831f35133efa0e8b")
(setf (get lslidar_cx_driver::remove_controlResponse :datatype-) "lslidar_cx_driver/remove_controlResponse")
(setf (get lslidar_cx_driver::remove_controlResponse :definition-)
      "int32 remove_control
---
bool result

")



(provide :lslidar_cx_driver/remove_control "bdd6a9c7cf1a09e7831f35133efa0e8b")


