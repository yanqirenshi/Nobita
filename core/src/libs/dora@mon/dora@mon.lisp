(in-package :nobit@.dora@mon)


(defclass dora@mon (shinra:shin)
  ((name        :accessor name        :initarg :name        :initform "")
   (description :accessor description :initarg :description :initform "")
   (future-tool :accessor future-tool :initarg :future-tool :initform nil))
  (:documentation ""))


(defmethod jojo:%to-json ((obj dora@mon))
  (jojo:with-object
    (jojo:write-key-value "_id"         (slot-value obj 'up:%id))
    (jojo:write-key-value "name"        (slot-value obj 'name))
    (jojo:write-key-value "description" (or (slot-value obj 'description) ""))
    (jojo:write-key-value "_class"      "DORA@MON")))
