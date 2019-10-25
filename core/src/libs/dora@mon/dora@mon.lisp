(in-package :nobit@.dora@mon)


(defclass dora@mon (shinra:shin)
  ((name        :accessor name        :initarg :name        :initform "")
   (description :accessor description :initarg :description :initform ""))
  (:documentation ""))


(defmethod jojo:%to-json ((obj dora@mon))
  (jojo:with-object
    (jojo:write-key-value "_id"         (slot-value obj 'up:%id))
    (jojo:write-key-value "name"        (slot-value obj 'name))
    (jojo:write-key-value "description" (or (slot-value obj 'description) ""))
    (jojo:write-key-value "_class"      "DORA@MON")))


(defun find-dora@mon (graph)
  (shinra:find-vertex graph 'dora@mon))


(defun get-dora@mon (graph &key %id)
  (when %id
    (shinra:get-vertex-at graph 'dora@mon :%id %id)))


(defun tx-make-dora@mon (graph &key (name "dora@mon:???") (description ""))
  (shinra:tx-make-vertex graph
                         'dora@mon
                         `((name ,name)
                           (description ,description))))


(defmethod print-object ((obj dora@mon) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))
