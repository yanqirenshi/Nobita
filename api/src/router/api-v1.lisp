(in-package :cl-user)
(defpackage nobit@.api.api-v1
  (:use :cl
        :caveman2
        :lack.middleware.validation
        :nobit@.api.config
        :nobit@.api.render)
  (:export #:*router*))
(in-package :nobit@.api.api-v1)

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

(defroute "/nodes" ()
  (render-json (nobit@.api.controller:nodes)))

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
