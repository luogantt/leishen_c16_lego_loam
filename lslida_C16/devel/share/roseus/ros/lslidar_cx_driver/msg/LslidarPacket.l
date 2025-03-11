;; Auto-generated. Do not edit!


(when (boundp 'lslidar_cx_driver::LslidarPacket)
  (if (not (find-package "LSLIDAR_CX_DRIVER"))
    (make-package "LSLIDAR_CX_DRIVER"))
  (shadow 'LslidarPacket (find-package "LSLIDAR_CX_DRIVER")))
(unless (find-package "LSLIDAR_CX_DRIVER::LSLIDARPACKET")
  (make-package "LSLIDAR_CX_DRIVER::LSLIDARPACKET"))

(in-package "ROS")
;;//! \htmlinclude LslidarPacket.msg.html


(defclass lslidar_cx_driver::LslidarPacket
  :super ros::object
  :slots (_stamp _data ))

(defmethod lslidar_cx_driver::LslidarPacket
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) (make-array 1212 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8[1212] _data
    (* 1    1212)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8[1212] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[1212] _data
   (setq _data (make-array 1212 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 1212)
   ;;
   self)
  )

(setf (get lslidar_cx_driver::LslidarPacket :md5sum-) "2176b512706452637099709287fea15e")
(setf (get lslidar_cx_driver::LslidarPacket :datatype-) "lslidar_cx_driver/LslidarPacket")
(setf (get lslidar_cx_driver::LslidarPacket :definition-)
      "# Raw Leishen LIDAR packet.

time stamp              # packet timestamp
uint8[1212] data        # packet contents


")



(provide :lslidar_cx_driver/LslidarPacket "2176b512706452637099709287fea15e")


