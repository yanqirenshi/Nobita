(in-package :nobit@)

(defmethod jojo:%to-json ((obj 4neo))
  (jojo:with-object
    (jojo:write-key-value "_id"  (slot-value obj 'up:%id))
    (jojo:write-key-value "name" (slot-value obj 'name))))

(defun find-4neo (graph)
  (find-vertex graph '4neo))

(defun tx-make-4neo (graph)
  (tx-make-vertex graph '4neo))

(defmethod print-object ((obj 4neo) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))
