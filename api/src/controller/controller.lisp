(in-package :nobit@.api.controller)

(defun nodes ()
  (let ((graph nobit@.graph:*graph*))
    (nconc (nobit@:find-g*an graph)
           (nobit@:find-4neo graph)
           (nobit@:find-nobit@ graph))))

(defun edges ()
  (let ((graph nobit@.graph:*graph*))
    (nobit@:find-frendship graph)))
