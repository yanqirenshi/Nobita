(in-package :nobita)

;;;;;
;;;;; Node
;;;;;
(defclass node (shinra:shin))

(defclass gian (node)
  ()
  (:documentation "要求(request)を作成するノードです。
全てはここから初まります。"))

(defclass suneo (node)
  ()
  (:documentation ""))

(defclass nobita (node)
  ()
  (:documentation "作業者です。
要求(request)をトリガに作業を実施します。"))

(defclass gadget (node)
  ()
  (:documentation ""))

(defclass doraemon (node)
  ()
  (:documentation ""))

;;;;;
;;;;; Edge
;;;;;
(defclass edge (shinra:ra) ())

(defclass context (edge) ())

;;;;;
;;;;; other
;;;;;
(defclass request () ())
