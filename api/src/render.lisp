(in-package :cl-user)
(defpackage nobit@.api.render
  (:use :cl)
  (:import-from #:caveman2
                #:*response*
                #:response-headers)
  (:export #:render
           #:render-json
           #:*access-control-allow-origin*))
(in-package :nobit@.api.render)

(defun set-header (response key value)
  (setf (getf (response-headers response) key)
        value))

(defvar *access-control-allow-origin* nil)

(defun render-json (object)
  (set-header *response* :content-type "application/json")
  (when *access-control-allow-origin*
    (set-header *response* :access-control-allow-origin *access-control-allow-origin*))
  (set-header *response* :access-control-allow-credentials "true")
  (jonathan:to-json object))
