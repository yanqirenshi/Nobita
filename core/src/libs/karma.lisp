(defpackage nobit@.karma
  (:nicknames :nobi.karma)
  (:use #:cl)
  (:import-from :alexandria
                #:when-let)
  (:import-from :queues
                #:make-queue
                #:qpush
                #:qpop)
  (:export #:make-karma-pool
           #:push-karma
           #:pop-karma
           #:karma-pool
           #:qsize
           #:rm-karma-at-idea-id))
(in-package :nobit@.karma)

(defun make-karma-pool ()
  (make-queue :priority-cqueue
              :compare #'(lambda (a b)
                           (< (getf a :sequence)
                              (getf b :sequence)))))

(defclass karma-pool ()
  ((counter :accessor counter :initarg :counter :initform 0)
   (queue :accessor queue :initarg :queue :initform (make-karma-pool))))

(defgeneric qsize (pool)
  (:method ((pool karma-pool))
    (queues:qsize (queue pool))))

(defun push-karma (karma-pool &key idea_id graph source friendship)
  (qpush (queue karma-pool)
         (list :sequence (incf (counter karma-pool))
               :idea_id idea_id
               :graph graph
               :source source
               :friendship friendship)))

(defun pop-karma (karma-pool)
  (qpop (queue karma-pool)))

(defun find-karmas (karma-pool idea-id)
  (let ((queue (queue karma-pool)))
    (queues:queue-find queue
                       #'(lambda (node)
                           (= (getf node :idea_id)
                              idea-id)))))

(defun rm-karma-at-idea-id (idea-id karam-pool)
  (when-let ((node (find-karmas karam-pool idea-id)))
    (queues:queue-delete (queue karam-pool) node)
    (rm-karma-at-idea-id idea-id karam-pool)))
