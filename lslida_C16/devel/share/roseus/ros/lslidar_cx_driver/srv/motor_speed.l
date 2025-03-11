;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::motor_speed)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'motor_speed (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::MOTOR_SPEED")
  (make-package "LSLIDAR_CX_DRIVER::MOTOR_SPEED"))
(unless (find-package "LSLIDAR_CX_DRIVER::MOTOR_SPEEDREQUEST")
  (make-package "LSLIDAR_CX_DRIVER::MOTOR_SPEEDREQUEST"))
(unless (find-package "LSLIDAR_CX_DRIVER::MOTOR_SPEEDRESPONSE")
  (make-package "LSLIDAR_CX_DRIVER::MOTOR_SPEEDRESPONSE"))

(in-package "ROS")





(defclass lslidar_cx_driver::motor_speedRequest
  :super ros::object
  :slots (_motor_speed ))

(defmethod lslidar_cx_driver::motor_speedRequest
  (:init
   (&key
    ((:motor_speed __motor_speed) 0)
    )
   (send-super :init)
   (setq _motor_speed (round __motor_speed))
   self)
  (:motor_speed
   (&optional __motor_speed)
   (if __motor_speed (setq _motor_speed __motor_speed)) _motor_speed)
  (:serialization-length
   ()
   (+
    ;; int32 _motor_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _motor_speed
       (write-long _motor_speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _motor_speed
     (setq _motor_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lslidar_cx_driver::motor_speedResponse
  :super ros::object
  :slots (_result ))

(defmethod lslidar_cx_driver::motor_speedResponse
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

(defclass lslidar_cx_driver::motor_speed
  :super ros::object
  :slots ())

(setf (get lslidar_cx_driver::motor_speed :md5sum-) "3a44aee86421f5746f51f262cc2e693f")
(setf (get lslidar_cx_driver::motor_speed :datatype-) "lslidar_cx_driver/motor_speed")
(setf (get lslidar_cx_driver::motor_speed :request) lslidar_cx_driver::motor_speedRequest)
(setf (get lslidar_cx_driver::motor_speed :response) lslidar_cx_driver::motor_speedResponse)

(defmethod lslidar_cx_driver::motor_speedRequest
  (:response () (instance lslidar_cx_driver::motor_speedResponse :init)))

(setf (get lslidar_cx_driver::motor_speedRequest :md5sum-) "3a44aee86421f5746f51f262cc2e693f")
(setf (get lslidar_cx_driver::motor_speedRequest :datatype-) "lslidar_cx_driver/motor_speedRequest")
(setf (get lslidar_cx_driver::motor_speedRequest :definition-)
      "int32 motor_speed
---
bool result

")

(setf (get lslidar_cx_driver::motor_speedResponse :md5sum-) "3a44aee86421f5746f51f262cc2e693f")
(setf (get lslidar_cx_driver::motor_speedResponse :datatype-) "lslidar_cx_driver/motor_speedResponse")
(setf (get lslidar_cx_driver::motor_speedResponse :definition-)
      "int32 motor_speed
---
bool result

")



(provide :lslidar_cx_driver/motor_speed "3a44aee86421f5746f51f262cc2e693f")


