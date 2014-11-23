#|

This file is a part of nobita project.
Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)

|#

(in-package :nobita)

(defclass nobita (heart)
  ((name :documentation ""
         :accessor      name
         :initarg       :name
         :initform      "I don't have a name.")
   (memory :documentation ""
           :accessor      memory
           :initarg       :memory
           :initform      nil)))

(defvar *nobita* (make-instance 'nobita :name "の○太"))

(defmethod beat ((nobita nobita))
  nobita)
