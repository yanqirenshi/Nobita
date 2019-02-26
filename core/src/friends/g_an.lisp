(in-package :nobit@)

(defmethod jojo:%to-json ((obj g*an))
  (jojo:with-object
    (jojo:write-key-value "_id"      (slot-value obj 'up:%id))
    (jojo:write-key-value "name"     (slot-value obj 'name))
    (jojo:write-key-value "location" (location2json (slot-value obj 'location)))
    (jojo:write-key-value "_class"   "G*AN")))

(defun find-g*an (graph)
  (find-vertex graph 'g*an))

(defun tx-make-g*an (graph &key (name "G*an:???"))
  (tx-make-vertex graph 'g*an `((name ,name))))

(defgeneric flash-across-ones-mind (graph g*an)
  (:method (graph (g*an g*an))
    (format t  "Start!! gian=~S~%" g*an)
    (spreads graph
             (make-idea)
             g*an
             (find-frendship graph :from g*an))))

(defmethod print-object ((obj g*an) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))
