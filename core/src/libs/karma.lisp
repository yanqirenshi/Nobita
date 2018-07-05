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

(defgeneric push-karma (karma-pool &key idea_id graph source friendship)
  (:method ((karma-pool karma-pool) &key idea_id graph source friendship)
    (let ((sequence (incf (counter karma-pool))))
      (qpush (queue karma-pool)
             (list :sequence sequence
                   :idea_id idea_id
                   :graph graph
                   :source source
                   :friendship friendship)))))

(defgeneric pop-karma (karma-pool)
  (:method ((karma-pool karma-pool))
    (qpop (queue karma-pool))))

(defgeneric find-karmas (karma-pool idea-id)
  (:method ((karma-pool karma-pool) idea-id)
    (let ((queue (queue karma-pool)))
      (queues:queue-find queue
                         #'(lambda (node)
                             (= (getf node :idea_id)
                                idea-id))))))

(defgeneric rm-karma-at-idea-id (karam-pool idea-id)
  (:method ((karma-pool karma-pool) idea-id)
    (when-let ((node (find-karmas karma-pool idea-id)))
      (queues:queue-delete (queue karma-pool) node)
      (rm-karma-at-idea-id karma-pool idea-id))))
