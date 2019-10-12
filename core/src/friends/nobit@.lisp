(in-package :nobit@)


(defun find-nobit@ (graph)
  (find-vertex graph 'nobit@))


(defun get-nobit@ (graph &key %id)
  (get-vertex-at graph 'nobit@ :%id %id))


(defun tx-make-nobit@ (graph &key (name "Nobit@:???") (description "") action)
  (tx-make-vertex graph 'nobit@
                  `((name ,name)
                    (description ,description)
                    (action ,action))))


(defgeneric nobit@-p (obj)
  (:method ((obj nobit@))
    t)
  (:method (obj)
    nil))


(defmethod print-object ((obj nobit@) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))
