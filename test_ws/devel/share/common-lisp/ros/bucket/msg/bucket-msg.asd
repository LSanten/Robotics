
(cl:in-package :asdf)

(defsystem "bucket-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Nums" :depends-on ("_package_Nums"))
    (:file "_package_Nums" :depends-on ("_package"))
  ))