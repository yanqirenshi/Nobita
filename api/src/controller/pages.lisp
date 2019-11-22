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


(defun dora@mon-use-package-list (graph dora@mon)
  (declare (ignore graph dora@mon))
  (mapcar #'(lambda (pkg)
              (list :|name|      (package-name pkg)
                    :|nicknames| (package-nicknames pkg)))
          (list-all-packages)))


(defun pages-dora@mon-future-tools-create (graph dora@mon &key package-name)
  (list :|dra@mon|  (dora@mon2dora@mon dora@mon :graph graph)
        :|packages| (dora@mon-use-package-list graph dora@mon)
        :|operators| (when package-name
                       (package-symbol-list package-name))))


(defun pages-future-tool (graph future-item)
  (list :|future_item| future-item
        :|dora@mon|    (nobit@.dora@mon:future-tool-owner graph future-item)
        :|users|       (nobit@.dora@mon:future-tool-users graph future-item)))
