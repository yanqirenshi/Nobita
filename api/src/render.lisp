(in-package :cl-user)
(defpackage nobita.api.render
  (:use :cl)
  (:import-from #:caveman2
                #:*response*
                #:response-headers)
  (:export #:render
           #:render-json))
(in-package :nobita.api.render)

(defun render-json (object)
  (setf (getf (response-headers *response*) :content-type) "application/json")
  (jonathan:to-json object))
