#|
This file is a part of nobita project.
Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)
|#

#|
Author: satoshi iwasaki (yanqirenshi@gmail.com)
|#

(in-package :cl-user)
(defpackage nobita-asd
  (:use :cl :asdf))
(in-package :nobita-asd)

(defsystem nobita
  :version "0.1"
  :author "satoshi iwasaki"
  :license "LLGPL"
  :depends-on (:cl+)
  :components ((:module "src"
                        :components
                        ((:file "package")
                         (:file "heart"       :depends-on ("package"))
                         (:file "nobita"      :depends-on ("heart"))
                         (:file "web/common"  :depends-on ("nobita"))
                         (:file "web/nobita"  :depends-on ("nobita"))
                         (:file "web/httpsvr" :depends-on ("nobita")))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (load-op nobita-test))))
