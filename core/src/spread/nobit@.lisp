(in-package :nobit@)

(defmethod spread ((graph shinra:banshou) (idea idea) source (nobit@ nobit@))
  (format t "nobit@=~a~%" nobit@)
  (spreads graph idea nobit@
           (find-frendship graph
                           :from nobit@
                           :to-classes '(4neo nobit@))))
