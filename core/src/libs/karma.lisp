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
           #:rm-karma
           #:rm-karma-at-idea-id))
(in-package :nobit@.karma)


;;;;;
;;;;; karma
;;;;;
(defun make-karma (sequence idea_id graph source friendship)
  (list :sequence sequence
        :idea_id idea_id
        :graph graph
        :source source
        :friendship friendship))


;;;;;
;;;;; karma pool
;;;;;
(defun make-karma-pool ()
  (make-queue :priority-cqueue
              :compare #'(lambda (a b)
                           (< (getf a :sequence)
                              (getf b :sequence)))))


(defclass karma-pool ()
  ((counter :accessor counter :initarg :counter :initform 0)
   (queue   :accessor queue :initarg :queue :initform (make-karma-pool))))


(defmethod print-object ((obj karma-pool) out)
  (print-unreadable-object (obj out :type t)
    (format out "counter:~s, queue-size:~s"
            (counter obj)
            (qsize obj))))


(defgeneric qsize (pool)
  (:method ((pool karma-pool))
    (queues:qsize (queue pool))))


(defgeneric push-karma (karma-pool &key idea_id graph source friendship)
  (:method ((karma-pool karma-pool) &key idea_id graph source friendship)
    (let ((sequence (incf (counter karma-pool))))
      (qpush (queue karma-pool)
             (make-karma sequence idea_id graph source friendship)))))


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


(defgeneric rm-karma (karma-pool karma)
  (:method ((karma-pool karma-pool) karma)
    (when karma
      (queues:queue-delete (queue karma-pool) karma))))


(defgeneric rm-karma-at-idea-id (karma-pool idea-id)
  (:method ((karma-pool karma-pool) idea-id)
    (when-let ((karma (find-karmas karma-pool idea-id)))
      (rm-karma karma-pool karma)
      (rm-karma-at-idea-id karma-pool idea-id))))
