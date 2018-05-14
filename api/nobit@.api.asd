(in-package :cl-user)
(defpackage nobit@.api-asd
  (:use :cl :asdf))
(in-package :nobit@.api-asd)

(defsystem nobit@.api
  :version "0.1"
  :author ""
  :license ""
  :depends-on (:clack
               :lack
               :caveman2
               :envy
               :cl-ppcre
               :uiop
               :lack-middleware-validation
               :jonathan
               ;; Database
               :upanishad
               :shinrabanshou
               :sephirothic)
  :components ((:module "src"
                :components
                ((:file "config")
                 (:module "controller"
                  :components ((:file "package")
                               (:file "controller")))
                 (:file "render")
                 (:module "router"
                  :components ((:file "route")
                               (:file "api-v1")))
                 (:file "main"))))
  :description ""
  :in-order-to ((test-op (load-op nobit@.api-test))))
