(defpackage nobit@.hearts
  (:nicknames :nobi.hearts)
  (:use #:cl
        #:nobit@.karma)
  (:import-from :queues
                #:make-queue
                #:qpush
                #:qpop)
  (:import-from :shinra
                #:get-vertex-at)
  (:export #:make-heart
           #:start-heart
           #:stop-heart
           ;; karma
           #:push-karma
           #:pop-karma
           #:karma-pool))
(in-package :nobit@.hearts)

(defclass nobiheart (rhythm::heart)
  ((karma-pool :accessor karma-pool :initarg :karma-pool :initform (make-karma-pool))))

(defun make-heart (name core)
  (rhythm:make-heart :class 'nobiheart
                     :name (concatenate 'string "nobit@" name)
                     :core #'(lambda (heart times)
                               (funcall core heart times))))

(defun start-heart (heart)
  (rhythm:tune heart 1))

(defun stop-heart (heart)
  (rhythm:tune heart 0))
