(in-package :cl-user)
(defpackage nobit@.api-test-asd
  (:use :cl :asdf))
(in-package :nobit@.api-test-asd)

(defsystem nobit@.api-test
  :author ""
  :license ""
  :depends-on (:nobit@.api
               :prove)
  :components ((:module "t"
                :components
                ((:file "nobit@.api"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
