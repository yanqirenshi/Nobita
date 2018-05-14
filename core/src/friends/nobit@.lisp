(in-package :nobit@)

(defmethod jojo:%to-json ((obj nobit@))
  (jojo:with-object
    (jojo:write-key-value "_id"  (slot-value obj 'up:%id))
    (jojo:write-key-value "name" (slot-value obj 'name))
    (jojo:write-key-value "action" (princ-to-string (slot-value obj 'action)))))

(defun find-nobit@ (graph)
  (find-vertex graph 'nobit@))

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
