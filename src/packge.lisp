(in-package :cl-user)
(defpackage nobita
  (:nicknames :nobi )
  (:use :cl :cl-who :cl-css))
(in-package :nobita)

(defvar *log* nil)
(defvar *pool-omae* (make-instance 'pool))
(defvar *pool-situation* (make-instance 'pool))
(defvar *situation* nil)
(defvar *beat* (make-instance 'beat :id "test"))
