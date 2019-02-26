(in-package :cl-user)
(defpackage nobit@.api.api-v1
  (:use :cl
        :caveman2
        :lack.middleware.validation
        :nobit@.api.config
        :nobit@.api.render)
  (:export #:*router*))
(in-package :nobit@.api.api-v1)

(defun str2type-keyword (str)
  (let ((v (string-upcase str)))
    (assert (find v '("G*AN" "4NEO" "NOBIT@") :test 'equal))
    (alexandria:make-keyword v)))


;;;;;
;;;;; Application
;;;;;
(defclass <router> (<app>) ())
(defvar *router* (make-instance '<router>))
(clear-routing-rules *router*)

;;;;;
;;;;; Routing rules
;;;;;
(defroute "/" ()
  (render-json nil))

;;;
;;; Nodes
;;;
(defroute "/nodes" ()
  (render-json (nobit@.api.controller:nodes)))

(defroute ("/nodes/:node-id/location" :method :POST)
    (&key node-id |type| |contents|)
  (let ((_id (parse-integer node-id))
        (type (str2type-keyword |type|)))
    (render-json (nobit.api.ctrl:save-node-location _id type |contents|))))


;;;
;;; Ndges
;;;
(defroute "/edges" ()
  (render-json (nobit@.api.controller:edges)))

(defroute "/hearts" ()
  (render-json (nobit@.api.controller:find-hearts)))


;;;;;
;;;;; Error pages
;;;;;
(defmethod on-exception ((app <router>) (code (eql 404)))
  (declare (ignore app))
  "404")
