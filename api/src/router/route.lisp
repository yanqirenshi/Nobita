(in-package :cl-user)
(defpackage nobita.api.router
  (:use :cl
        :caveman2
        :lack.middleware.validation
        :nobita.api.config
        :nobita.api.render)
  (:export #:*route*))
(in-package :nobita.api.router)

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
