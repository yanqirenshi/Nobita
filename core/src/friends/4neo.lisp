(in-package :nobit@)


(defun find-4neo (graph)
  (find-vertex graph '4neo))


(defun get-4neo (graph &key %id)
  (when %id
    (get-vertex-at graph '4neo :%id %id)))


(defun tx-make-4neo (graph &key (name "4neo:???") (description ""))
  (tx-make-vertex graph '4neo `((name ,name)
                                (description ,description))))


(defmethod print-object ((obj 4neo) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))
