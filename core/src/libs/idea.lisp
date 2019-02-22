(defpackage nobit@.idea
  (:nicknames :nobi.idea)
  (:use #:cl))
(in-package :nobit@.idea)

(defvar *idea-id-counter* 0)

(defclass idea ()
  ((_id       :accessor _id       :initarg :_id       :initform (incf *idea-id-counter*))
   (contents  :accessor contents  :initarg :contents  :initform nil)
   (results   :accessor results   :initarg :results   :initform nil)
   (timestamp :accessor timestamp :initarg :timestamp :initform (:start (local-time:now) :end nil))))

(defun make-idea ()
  (make-instance 'idea))
