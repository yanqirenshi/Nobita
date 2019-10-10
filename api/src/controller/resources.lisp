(in-package :nobit@.api.controller)


(defun tx-create-g*an (graph &key name description)
  (assert graph)
  (assert name)
  (nobit@:tx-make-g*an graph
                       :name name
                       :description description))
