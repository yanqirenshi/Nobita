(in-package :nobit@.hearts)


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
