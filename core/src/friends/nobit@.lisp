(in-package :nobit@)

(defun tx-make-nobit@ (graph &key action)
  (tx-make-vertex graph 'nobit@
                  `((action ,action))))

(defgeneric nobit@-p (obj)
  (:method ((obj nobit@))
    t)
  (:method (obj)
    nil))
