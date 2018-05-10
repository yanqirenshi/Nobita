(in-package :nobit@)

(defun tx-make-nobit@ (graph &key (name "") action)
  (tx-make-vertex graph 'nobit@
                  `((name ,name)
                    (action ,action))))

(defgeneric nobit@-p (obj)
  (:method ((obj nobit@))
    t)
  (:method (obj)
    nil))
