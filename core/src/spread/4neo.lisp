(in-package :nobit@)

(defmethod spread ((graph shinra:banshou) (idea list) source (4neo 4neo))
  (format t "~%4neo   : ~a~%" 4neo)
  (let ((target-class (if (nobit@-p source) 'g*an 'nobit@)))
    (spreads graph idea 4neo
             (find-frendship graph
                             :from 4neo
                             :to-classes target-class))))
