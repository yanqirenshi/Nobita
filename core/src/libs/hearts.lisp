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
  ((code :accessor code
         :initarg :code
         :initform nil)
   (karma-pool :accessor karma-pool
               :initarg :karma-pool
               :initform (make-instance 'karma-pool))))

(defmethod print-object ((obj nobiheart) out)
  (print-unreadable-object (obj out :type t)
    (format out "name:~s, bpm:~s, qsize:~s"
            (rhythm:name obj)
            (rhythm:bpm obj)
            (nobit@.karma:qsize (karma-pool obj)))))

(defun make-heart (name core)
  (let ((heart (rhythm:make-heart :class 'nobiheart
                                  :name (concatenate 'string "nobit@" name)
                                  :core #'(lambda (heart times)
                                            (funcall core heart times)))))
    (let ((code (alexandria:make-keyword (string-upcase name))))
      (setf (code heart) code))
    heart))

(defgeneric start-heart (heart)
  (:method ((heart nobiheart))
    (rhythm:tune heart 1)))

(defgeneric stop-heart (heart)
  (:method ((heart nobiheart))
    (rhythm:tune heart 0)))
