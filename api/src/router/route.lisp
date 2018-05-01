(in-package :cl-user)
(defpackage nobit@.api.router
  (:use :cl
        :caveman2
        :lack.middleware.validation
        :nobit@.api.config
        :nobit@.api.render)
  (:export #:*route*))
(in-package :nobit@.api.router)

;;;;;
;;;;; Router
;;;;;
(defclass <router> (<app>) ())
(defvar *route* (make-instance '<router>))
(clear-routing-rules *route*)

;;;;;
;;;;; Routing rules
;;;;;
(defroute "/" ()
  "")

;;;;;
;;;;; Error pages
;;;;;
(defmethod on-exception ((app <router>) (code (eql 404)))
  (declare (ignore app))
  "404")
