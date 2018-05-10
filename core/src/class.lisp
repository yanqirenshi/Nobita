(in-package :nobit@)

;;;;;
;;;;; Base
;;;;;
(defclass node (shinra:shin)
  ((name :accessor name :initarg :name :initform "")))
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
