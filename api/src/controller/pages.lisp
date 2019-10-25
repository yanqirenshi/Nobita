(in-package :nobit@.api.controller)


(defun pages-nobit@ (graph nobit@-%id)
  (let ((nobit@ (nobit@:get-nobit@ graph :%id nobit@-%id)))
    (list :|nobit@|      (nobit@:get-nobit@ graph :%id nobit@-%id)
          :|future_item| (or (nobit@:get-future-tool graph :nobit@ nobit@) :null)
          :|actions|     (nobit@:find-nobit@-actions nobit@))))
