(in-package :cl-user)
(defpackage nobita.api-test-asd
  (:use :cl :asdf))
(in-package :nobita.api-test-asd)

(defsystem nobita.api-test
  :author ""
  :license ""
  :depends-on (:nobita.api
               :prove)
  :components ((:module "t"
                :components
                ((:file "nobita.api"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
