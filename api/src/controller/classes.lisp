(in-package :nobit@.api.controller)


;;;;;
;;;;; dora@mon
;;;;;
(defclass dora@mon ()
  ((_id         :accessor _id         :initarg :_id        :initform nil)
   (name        :accessor name        :initarg :name        :initform "")
   (description :accessor description :initarg :description :initform "")
   (4d-pocket   :accessor 4d-pocket   :initarg :4d-pocket   :initform nil))
  (:documentation ""))


(defun dora@mon2dora@mon (dora@mon &key graph)
  (let ((new-dora@mon (make-instance 'dora@mon)))
    (setf (_id         new-dora@mon) (up:%id dora@mon))
    (setf (name        new-dora@mon) (nobit@.dora@mon::name dora@mon))
    (setf (description new-dora@mon) (nobit@.dora@mon::description dora@mon))
    (when graph
      (setf (4d-pocket   new-dora@mon)
            (nobit@.dora@mon:find-future-tool-by-dora@mon graph dora@mon)))
    new-dora@mon))


(defmethod jojo:%to-json ((obj dora@mon))
  (jojo:with-object
    (jojo:write-key-value "_id"         (_id obj))
    (jojo:write-key-value "name"        (name obj))
    (jojo:write-key-value "description" (description obj))
    (jojo:write-key-value "4d-pocket"   (4d-pocket obj))
    (jojo:write-key-value "_class"      "DORA@MON")))


;;;;;
;;;;; future-tool
;;;;;
