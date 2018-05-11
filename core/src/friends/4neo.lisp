(in-package :nobit@)

(defun tx-make-4neo (graph)
  (tx-make-vertex graph '4neo))

(defmethod print-object ((obj 4neo) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))
