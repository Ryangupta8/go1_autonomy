
(cl:in-package :asdf)

(defsystem "go1_autonomy-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :amrl_msgs-msg
               :geometry_msgs-msg
               :nav_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "graphNavSrv" :depends-on ("_package_graphNavSrv"))
    (:file "_package_graphNavSrv" :depends-on ("_package"))
    (:file "socialNavSrv" :depends-on ("_package_socialNavSrv"))
    (:file "_package_socialNavSrv" :depends-on ("_package"))
  ))