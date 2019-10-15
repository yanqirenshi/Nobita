(in-package :nobit@.dora@mon)


(defclass future-tool (shinra:shin)
  ((code        :accessor code        :initarg :code        :initform "")
   (name        :accessor name        :initarg :name        :initform "")
   (description :accessor description :initarg :description :initform "")
   (efficacy    :accessor efficacy    :initarg :efficacy    :initform ""))
  (:documentation ""))


(defmethod jojo:%to-json ((obj future-tool))
  (jojo:with-object
    (jojo:write-key-value "_id"         (slot-value obj 'up:%id))
    (jojo:write-key-value "code"        (slot-value obj 'code))
    (jojo:write-key-value "name"        (slot-value obj 'name))
    (jojo:write-key-value "description" (or (slot-value obj 'description) ""))
    (jojo:write-key-value "_class"      "FUTURE-TOOL")))


;;;;;
;;;;; Call Operator
;;;;;
(defun normalize-call-operator-args (args)
  (when (listp args)
    (list :normal   (getf args :normal)
          :keys     (getf args :keys)
          :rest     (getf args :rest)
          :optional (getf args :optional))))


(defgeneric make-efficacy.call-operator (operator args)
  (:method ((operator function) args)
    (list :type     :call-operator
          :contents (list :symbol operator
                          :args (normalize-call-operator-args args)))))


;;;;;
;;;;; Evaluation Code
;;;;;
(defun make-efficacy.evaluation-code (code)
  (list :type     :evaluation-code
        :contents code))


(defun show-efficacy (future-tool idea source)
  (declare (ignore future-tool idea source))
  nil)
