(in-package :nobit@)

(defun tx-make-nobit@ (graph)
  (tx-make-vertex graph 'nobit@))

(defgeneric nobit@-p (obj)
  (:method ((obj nobit@))
    t)
  (:method (obj)
    nil))

(defvar *heart*
  (make-instance 'rhythm:heart
                 :name "my-heart"
                 :beat #'(lambda (heart times)
                           (format t "~a, ~a" heart times))))

(defun start ()
  (rhythm:tune *heart* 1))
