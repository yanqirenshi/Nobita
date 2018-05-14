(in-package :nobit@.api.controller)

(defun api-root ()
  (let ((graph nobit@.db:*graph*))
    (list :nodes (nconc (nobit@:find-g*an graph)
                        (nobit@:find-4neo graph)
                        (nobit@:find-nobit@ graph))
          :edges (nobit@:find-frendship graph))))
