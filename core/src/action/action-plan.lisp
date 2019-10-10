(in-package :nobit@.action)


;;;;;
;;;;; Classes
;;;;;
(defclass action-plan (shinra:shin)
  ((name        :accessor name        :initarg :name        :initform "")
   (description :accessor description :initarg :description :initform ""))
  (:documentation ""))


(defclass action-plan-cl (action-plan)
  ()
  (:documentation ""))


(defclass action-plan-op (action-plan)
  ()
  (:documentation ""))


(defmethod jojo:%to-json ((obj action-plan))
  (jojo:with-object
    (jojo:write-key-value "_id"         (slot-value obj 'up:%id))
    (jojo:write-key-value "name"        (slot-value obj 'name))
    (jojo:write-key-value "description" (or (slot-value obj 'description) ""))
    (jojo:write-key-value "_class"      "ACTION-PLAN")))


;;;;;
;;;;; action!
;;;;;
(defgeneric action! (graph nobit@ idea source))

(defmethod action! (graph (action-plan action-plan) idea source)
  action-plan)
