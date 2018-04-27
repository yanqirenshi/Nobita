#|
  This file is a part of nobita project.
  Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)
|#

(in-package :cl-user)
(defpackage nobita-test-asd
  (:use :cl :asdf))
(in-package :nobita-test-asd)

(defsystem nobita-test
  :author "satoshi iwasaki"
  :license "MIT"
  :depends-on (:nobita
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:file "nobita"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
