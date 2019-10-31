(in-package :nobit@.api.controller)


(defun pages-nobit@ (graph nobit@-%id)
  (let ((nobit@ (nobit@:get-nobit@ graph :%id nobit@-%id)))
    (list :|nobit@|      (nobit@:get-nobit@ graph :%id nobit@-%id)
          :|future_item| (or (nobit@:get-future-tool graph :nobit@ nobit@) :null)
          :|actions|     (nobit@:find-nobit@-actions nobit@))))


(defun pages-student-desk (graph)
  (list :|dora@mons| (mapcar #'(lambda (d)
                                 (dora@mon2dora@mon d :graph graph))
                             (nobit@.dora@mon::find-dora@mon graph))))


(defun pages-dora@mon (graph dora@mon)
  (dora@mon2dora@mon dora@mon :graph graph))


(defun pages-future-tool (graph future-item)
  (declare (ignore graph future-item))
  (list :|future_item| :null
        :|dora@mon| :null
        :|users| nil))
