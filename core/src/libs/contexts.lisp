(defpackage nobit@.context
  (:nicknames :nobi.context)
  (:use #:cl)
  (:import-from :queues
                #:make-queue
                #:qpush
                #:qpop)
  (:export #:make-context
           #:push-context
           #:pop-context))
(in-package :nobit@.context)

(defvar *contexts* (queues:make-queue :simple-cqueue))

(defun make-context (&key graph idea source friendship)
  (list :graph graph
        :idea idea
        :source source
        :friendship friendship))

(defun push-context (context)
  (queues:qpush *contexts* context))

(defun pop-context ()
  (queues:qpop *contexts*))
