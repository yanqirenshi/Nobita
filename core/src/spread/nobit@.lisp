(in-package :nobit@)

(defun action! (graph idea source nobit@)
  (let ((action (action nobit@)))
    (if (null action)
        idea
        (funcall action
                 :graph graph
                 :idea idea
                 :source source
                 :nobit@ nobit@))))

(defmethod spread ((graph shinra:banshou) (idea list) source (nobit@ nobit@))
  (format t "nobit@=~a~%" nobit@)
  (spreads graph
           (action! graph idea source nobit@)
           nobit@
           (find-frendship graph
                           :from nobit@
                           :to-classes '(4neo nobit@))))
