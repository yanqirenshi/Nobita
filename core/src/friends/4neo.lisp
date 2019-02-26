(in-package :nobit@)

(defmethod jojo:%to-json ((obj 4neo))
  (jojo:with-object
    (jojo:write-key-value "_id"      (slot-value obj 'up:%id))
    (jojo:write-key-value "name"     (slot-value obj 'name))
    (jojo:write-key-value "location" (location2json (slot-value obj 'location)))
    (jojo:write-key-value "_class"   "4NEO")))

(defun find-4neo (graph)
  (find-vertex graph '4neo))

(defun tx-make-4neo (graph &key (name "4neo:???"))
  (tx-make-vertex graph '4neo `((name ,name))))

(defmethod print-object ((obj 4neo) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))
