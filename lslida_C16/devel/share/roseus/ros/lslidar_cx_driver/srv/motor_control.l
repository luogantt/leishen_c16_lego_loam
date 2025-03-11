;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::motor_control)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'motor_control (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::MOTOR_CONTROL")
  (make-package "LSLIDAR_CX_DRIVER::MOTOR_CONTROL"))
(unless (find-package "LSLIDAR_CX_DRIVER::MOTOR_CONTROLREQUEST")
  (make-package "LSLIDAR_CX_DRIVER::MOTOR_CONTROLREQUEST"))
(unless (find-package "LSLIDAR_CX_DRIVER::MOTOR_CONTROLRESPONSE")
  (make-package "LSLIDAR_CX_DRIVER::MOTOR_CONTROLRESPONSE"))

(in-package "ROS")





(defclass lslidar_cx_driver::motor_controlRequest
  :super ros::object
  :slots (_motor_control ))

(defmethod lslidar_cx_driver::motor_controlRequest
  (:init
   (&key
    ((:motor_control __motor_control) 0)
    )
   (send-super :init)
   (setq _motor_control (round __motor_control))
   self)
  (:motor_control
   (&optional __motor_control)
   (if __motor_control (setq _motor_control __motor_control)) _motor_control)
  (:serialization-length
   ()
   (+
    ;; int32 _motor_control
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _motor_control
       (write-long _motor_control s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _motor_control
     (setq _motor_control (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lslidar_cx_driver::motor_controlResponse
  :super ros::object
  :slots (_result ))

(defmethod lslidar_cx_driver::motor_controlResponse
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

(defclass lslidar_cx_driver::motor_control
  :super ros::object
  :slots ())

(setf (get lslidar_cx_driver::motor_control :md5sum-) "307d227221bb36a842541608aa239174")
(setf (get lslidar_cx_driver::motor_control :datatype-) "lslidar_cx_driver/motor_control")
(setf (get lslidar_cx_driver::motor_control :request) lslidar_cx_driver::motor_controlRequest)
(setf (get lslidar_cx_driver::motor_control :response) lslidar_cx_driver::motor_controlResponse)

(defmethod lslidar_cx_driver::motor_controlRequest
  (:response () (instance lslidar_cx_driver::motor_controlResponse :init)))

(setf (get lslidar_cx_driver::motor_controlRequest :md5sum-) "307d227221bb36a842541608aa239174")
(setf (get lslidar_cx_driver::motor_controlRequest :datatype-) "lslidar_cx_driver/motor_controlRequest")
(setf (get lslidar_cx_driver::motor_controlRequest :definition-)
      "int32 motor_control
---
bool result

")

(setf (get lslidar_cx_driver::motor_controlResponse :md5sum-) "307d227221bb36a842541608aa239174")
(setf (get lslidar_cx_driver::motor_controlResponse :datatype-) "lslidar_cx_driver/motor_controlResponse")
(setf (get lslidar_cx_driver::motor_controlResponse :definition-)
      "int32 motor_control
---
bool result

")



(provide :lslidar_cx_driver/motor_control "307d227221bb36a842541608aa239174")


