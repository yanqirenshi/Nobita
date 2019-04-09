(in-package :nobit@)


(defun ation!-core-funcall (graph action nobit@ idea source)
  (let ((operator (getf (getf action :contents) :symbol)))
    (handler-case
        (funcall operator
                 :graph  graph
                 :idea   idea
                 :nobit@ nobit@
                 :source source)
      (error (e) e))))


(defun ation!-core (graph action nobit@ idea source)
  (let ((results (ation!-core-funcall graph action nobit@ idea source)))
    (copy-idea idea :contents results)))


(defmethod action! (graph (nobit@ nobit@) idea source)
  (format t "~S: Start Action~%" nobit@)
  (let ((action (action nobit@)))
    (if (null action)
        (copy-idea idea)
        (let ((new-idea (ation!-core graph action nobit@ idea source)))
          (format t "~S: Complete Action~%" nobit@)
          new-idea))))
