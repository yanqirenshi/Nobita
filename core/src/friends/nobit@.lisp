(in-package :nobit@)

(defun tx-make-nobit@ (graph)
  (tx-make-vertex graph 'nobit@))

(defgeneric nobit@-p (obj)
  (:method ((obj nobit@))
    t)
  (:method (obj)
    nil))
