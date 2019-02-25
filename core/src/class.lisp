(in-package :nobit@)

(defun make-node-location ()
  (list :hold nil
        :x 0.0 :y 0.0 :z 0.0))

;;;;;
;;;;; Base
;;;;;
(defclass node (shinra:shin)
  ((name     :accessor name     :initarg :name     :initform "")
   (location :accessor location :initarg :location :initform (make-node-location))))
(defclass edge (shinra:ra) ())


;;;;;
;;;;; Node
;;;;;
(defclass g*an (node)
  ()
  (:documentation "要求(request)を作成するノードです。
全てはここから初まります。"))

(defclass 4neo (node)
  ()
  (:documentation ""))

(defclass nobit@ (node)
  ((action :accessor action :initarg :action :initform nil))
  (:documentation "作業者です。
要求(request)をトリガに作業を実施します。"))


;;;;;
;;;;; Edge
;;;;;
(defclass friendship (edge)
  ((heart    :accessor heart    :initarg :heart    :initform nil)
   (contexts :accessor contexts :initarg :contexts :initform (make-hash-table :synchronized t))))
