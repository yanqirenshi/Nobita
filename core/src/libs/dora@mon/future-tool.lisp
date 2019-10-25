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


(defmethod jojo:%to-json ((obj dora@mon))
  (jojo:with-object
    (jojo:write-key-value "_id"         (slot-value obj 'up:%id))
    (jojo:write-key-value "name"        (slot-value obj 'name))
    (jojo:write-key-value "description" (or (slot-value obj 'description) ""))
    (jojo:write-key-value "_class"      "DORA@MON")))


(defun find-future-tool (graph)
  (shinra:find-vertex graph 'future-tool))


(defun get-future-tool (graph &key %id)
  (when %id
    (shinra:get-vertex-at graph 'future-tool :%id %id)))


(defun tx-make-future-tool
    (graph &key (name "future-tool:???") (description "") (efficacy nil))
  (shinra:tx-make-vertex graph
                         'future-tool
                         `((name ,name)
                           (description ,description)
                           (efficacy , efficacy))))


(defmethod print-object ((obj future-tool) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))


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
