#|
  This file is a part of cl-oso project.
  Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)
|#

(in-package :cl-user)
(defpackage cl-oso-test-asd
  (:use :cl :asdf))
(in-package :cl-oso-test-asd)

(defsystem cl-oso-test
  :author "satoshi iwasaki"
  :license "LLGPL"
  :depends-on (:cl-oso
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:file "cl-oso"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
