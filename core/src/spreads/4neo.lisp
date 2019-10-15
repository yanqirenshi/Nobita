(in-package :nobit@)

(defmethod spread ((graph shinra:banshou) (idea nobit@.idea::idea) source (4neo 4neo))
  (format t "SPREAD 4Neo: Start ~a~%" 4neo)
  (let ((target-class (if (nobit@-p source) 'g*an 'nobit@)))
    (spreads graph idea 4neo
             (find-frendship graph
                             :from 4neo
                             :to-classes target-class)))
  (format t "SPREAD 4Neo: End ~a~%" 4neo))
