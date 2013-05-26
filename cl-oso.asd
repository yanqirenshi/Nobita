#|
  This file is a part of cl-oso project.
  Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)
|#

#|
  Author: satoshi iwasaki (yanqirenshi@gmail.com)
|#

(in-package :cl-user)
(defpackage cl-oso-asd
  (:use :cl :asdf))
(in-package :cl-oso-asd)

(defsystem cl-oso
  :version "0.1"
  :author "satoshi iwasaki"
  :license "LLGPL"
  :depends-on (:cl+)
  :components ((:module "src"
                :components
                ((:file "cl-oso")
		 (:file "server" :depends-on ("cl-oso")))))
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
  :in-order-to ((test-op (load-op cl-oso-test))))
