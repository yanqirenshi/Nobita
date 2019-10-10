(in-package :nobit@.api.controller)


(defun edges ()
  (let ((graph nobit@.graph:*graph*))
    (nobit@:find-frendship graph)))
