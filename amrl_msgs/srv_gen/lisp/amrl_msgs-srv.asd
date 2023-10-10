
(cl:in-package :asdf)

(defsystem "amrl_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :amrl_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectDetectionSrv" :depends-on ("_package_ObjectDetectionSrv"))
    (:file "_package_ObjectDetectionSrv" :depends-on ("_package"))
    (:file "SocialPipsSrv" :depends-on ("_package_SocialPipsSrv"))
    (:file "_package_SocialPipsSrv" :depends-on ("_package"))
  ))