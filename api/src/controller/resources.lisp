(in-package :nobit@.api.controller)


(defun tx-create-g*an (graph &key name (description ""))
  (assert graph)
  (assert name)
  (list name description))
