(in-package :nobit@)


(defun make-node-location ()
  (list :hold nil
        :x 0.0 :y 0.0 :z 0.0))


(defun location2json (location)
  (list :|hold| (or (getf location :hold) :null)
        :|x| (getf location :x)
        :|y| (getf location :y)
        :|z| (getf location :z)))


(defclass node (shinra:shin)
  ((name        :accessor name        :initarg :name        :initform "")
   (description :accessor description :initarg :description :initform "")
   (location    :accessor location    :initarg :location    :initform (make-node-location))))


(defclass edge (shinra:ra) ())
