(defpackage nobit@.idea
  (:nicknames :nobi.idea)
  (:use #:cl)
  (:export #:make-idea
           #:copy-idea))
(in-package :nobit@.idea)


(defvar *idea-id-counter* 0)


(defun make-idea-timestamp ()
  (list :start (local-time:now) :end nil))


(defclass idea ()
  ((_id       :accessor _id       :initarg :_id       :initform nil)
   (contents  :accessor contents  :initarg :contents  :initform nil)
   (results   :accessor results   :initarg :results   :initform nil)
   (timestamp :accessor timestamp :initarg :timestamp :initform (make-idea-timestamp))))


(defun make-idea (&key mode)
  (let ((idea (make-instance 'idea)))
    (unless mode
      (setf (_id idea) (incf *idea-id-counter*))
      idea)))


(defun copy-idea (idea &key contents)
  (let ((new-idea (make-idea)))
    (setf (_id new-idea)       (_id idea))
    (setf (contents new-idea)  (or contents (_id idea)))
    (setf (results new-idea)   (results idea))
    (setf (timestamp new-idea) (timestamp idea))))
