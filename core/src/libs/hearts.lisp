(defpackage nobit@.hearts
  (:nicknames :nobi.hearts)
  (:use #:cl)
  (:import-from :shinra
                #:get-vertex-at)
  (:import-from :nobi.context
                #:make-context-queue)
  (:export #:make-heart
           #:start-heart
           #:stop-heart))
(in-package :nobit@.hearts)

(defclass nobiheart (rhythm::heart)
  ((context  :accessor context  :initarg :context  :initform (make-context-queue))))

(defun make-heart (name core)
  (rhythm:make-heart :class 'nobiheart
                     :name (concatenate 'string "nobit@'s-" name)
                     :core #'(lambda (heart times)
                               (funcall core heart times))))

(defun start-heart (heart)
  (rhythm:tune heart 1))

(defun stop-heart (heart)
  (rhythm:tune heart 0))


;;;;;
;;;;; context
;;;;;
(defun make-context (&key graph idea source friendship)
  (list :graph graph
        :idea idea
        :source source
        :friendship friendship))

(defun push-context (heart context)
  (queues:qpush (context heart) context))

(defun pop-context (heart)
  (queues:qpop (context heart)))
