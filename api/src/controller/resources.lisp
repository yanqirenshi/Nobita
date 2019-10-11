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


(defun tx-create-friendship@ (graph &key from-id to-id description)
  (declare (ignore description))
  (assert graph)
  (assert (and from-id to-id))
  (let ((from (nobit@:get-friend graph :%id from-id))
        (to   (nobit@:get-friend graph :%id to-id))
        (heart nil))
    (assert (and from to))
    (nobit@:tx-make-frendship graph from to heart)))
