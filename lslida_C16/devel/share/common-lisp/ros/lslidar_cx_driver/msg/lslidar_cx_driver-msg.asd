
(cl:in-package :asdf)

(defsystem "lslidar_cx_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LslidarPacket" :depends-on ("_package_LslidarPacket"))
    (:file "_package_LslidarPacket" :depends-on ("_package"))
    (:file "LslidarScan" :depends-on ("_package_LslidarScan"))
    (:file "_package_LslidarScan" :depends-on ("_package"))
  ))