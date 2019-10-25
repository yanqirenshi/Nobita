(in-package :nobit@.dora@mon)

(defclass add-four-dimensional-pocket (shinra:ra)
  ((description :accessor description :initarg :description :initform "")))


(defmethod jojo:%to-json ((obj add-four-dimensional-pocket))
  (jojo:with-object
    (jojo:write-key-value "_id"        (slot-value obj 'up:%id))
    (jojo:write-key-value "from_id"    (slot-value obj 'shinra:from-id))
    (jojo:write-key-value "from_class" (slot-value obj 'shinra:from-class))
    (jojo:write-key-value "to_id"      (slot-value obj 'shinra:to-id))
    (jojo:write-key-value "to_class"   (slot-value obj 'shinra:to-class))))


(defvar *edge-type-fo-add-four-dimensional-pocket* :have-to)


(defun get-owner (graph future-tool)
  (car (shinra:find-r graph
                      'add-four-dimensional-pocket
                      :to           future-tool
                      :vertex-class 'dora@mon
                      :edge-type    *edge-type-fo-add-four-dimensional-pocket*)))


(defgeneric tx-make-add-four-dimensional-pocket
    (graph from to &key description)
  (:method (graph (from dora@mon) (to future-tool) &key description)
    (assert (null (get-owner graph to)))
    (shinra:tx-make-edge graph
                         'add-four-dimensional-pocket
                         from
                         to
                         *edge-type-fo-add-four-dimensional-pocket*
                         `((description ,description)))))


(defun tx-ensure-add-four-dimensional-pocket
    (graph from to &key description)
  (let ((r (get-owner graph to)))
    (if r
        (progn
          (assert (= (up:%id (getf r :vertex)) (up:%id from)))
          (getf r :edge))
        (tx-make-add-four-dimensional-pocket graph from to :description description))))
