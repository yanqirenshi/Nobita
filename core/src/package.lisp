(defpackage nobit@
  (:nicknames :nobi)
  (:use :cl)
  (:import-from :alexandria
                #:when-let)
  (:import-from :shinra
                #:tx-make-vertex
                #:tx-make-edge
                #:find-r)
  (:import-from :nobit@.db
                #:*graph*))
(in-package :nobit@)

(defun get-context (gian)
  gian)

(defun make-request (gian)
  (declare (ignore gian))
  (list :start (local-time:now)
        :end nil))

(defun push-context (context request)
  (list context request))

(defun publish-request (gian &key params)
  (declare (ignore params))
  (let ((context (get-context gian)))
    (push-context context (make-request gian))))
