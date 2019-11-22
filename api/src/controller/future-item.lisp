(in-package :nobit@.api.controller)


(defun change-future-item-name (graph future-item name)
  (up:execute-transaction
   (nobit@.dora@mon:tx-change-future-tool-name graph
                                               future-item
                                               name)))
