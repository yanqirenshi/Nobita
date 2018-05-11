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

(defmethod print-object ((obj nobit@) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))
