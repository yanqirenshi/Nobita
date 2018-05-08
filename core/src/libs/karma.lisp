(defpackage nobit@.karma
  (:nicknames :nobi.karma)
  (:use #:cl)
  (:import-from :queues
                #:make-queue
                #:qpush
                #:qpop)
  (:export #:make-karma-pool
           #:push-karma
           #:pop-karma
           #:karma-pool))
(in-package :nobit@.karma)

(defun make-karma-pool ()
  (make-queue :priority-cqueue
              :compare #'(lambda (a b)
                           (< (getf a :sequence)
                              (getf b :sequence)))))

(defclass karma-pool ()
  ((counter :accessor counter :initarg :counter :initform 0)
   (queue :accessor queue :initarg :queue :initform (make-karma-pool))))

(defun push-karma (karma-pool &key graph source friendship)
  (qpush (queue karma-pool)
         (list :sequence (incf (counter karma-pool))
               :graph graph
               :source source
               :friendship friendship)))

(defun pop-karma (karma-pool)
  (qpop (queue karma-pool)))
