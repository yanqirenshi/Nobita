(in-package :cl-user)
(defpackage nobita
  (:nicknames :nobi)
  (:use #:cl)
  (:import-from :nobita.db
                #:*graph*))
(in-package :nobita)

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
