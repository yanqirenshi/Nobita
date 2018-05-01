(defpackage nobit@
  (:nicknames :nobi)
  (:use #:cl
        #:nobit@.utilities)
  (:import-from :alexandria
                #:when-let
                #:ensure-list)
  (:import-from :shinra
                #:tx-make-vertex
                #:tx-make-edge
                #:find-r-edge
                #:get-vertex-at)
  (:import-from :rhythm
                #:make-heart
                #:tune)
  (:import-from :nobit@.db
                #:*graph*)
  (:export #:start))
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
