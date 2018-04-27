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
  :license "MIT"
  :depends-on (#:rhythm
               #:shinrabanshou)
  :components ((:module "src"
                        :components
                        ((:file "db")
                         (:file "package")
                         (:file "class")
                         (:file "idea")
                         (:file "g_an")
                         (:file "4neo")
                         (:file "nobit@"))))
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
