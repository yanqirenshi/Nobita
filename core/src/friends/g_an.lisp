(in-package :nobit@)


(defun find-g*an (graph)
  (find-vertex graph 'g*an))


(defun get-g*an (graph &key %id)
  (when %id
    (shinra:get-vertex-at graph 'g*an :%id %id)))


(defun tx-make-g*an (graph &key (name "G*an:???") (description ""))
  (tx-make-vertex graph 'g*an `((name ,name)
                                (description ,description))))


(defgeneric flash-across-ones-mind (graph g*an)
  (:method (graph (g*an g*an))
    (format t "Flash across ones mind: Start ~a~%" g*an)
    (spreads graph
             (make-idea)
             g*an
             (find-frendship graph :from g*an))
    (format t "Flash across ones mind: End ~a~%" g*an)))


(defmethod print-object ((obj g*an) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))
