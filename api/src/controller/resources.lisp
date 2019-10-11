(in-package :nobit@.api.controller)


(defun tx-create-g*an (graph &key name description)
  (assert graph)
  (assert name)
  (nobit@:tx-make-g*an graph
                       :name name
                       :description description))


(defun tx-create-4neo (graph &key name description)
  (assert graph)
  (assert name)
  (nobit@:tx-make-4neo graph
                       :name name
                       :description description))


(defun tx-create-nobit@ (graph &key name description)
  (assert graph)
  (assert name)
  (nobit@:tx-make-nobit@ graph
                         :name name
                         :description description
                         :action nil))
