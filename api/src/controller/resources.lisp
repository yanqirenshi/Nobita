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


(defun str2keyword (str)
  (alexandria:make-keyword (string-upcase str)))

(defun tx-create-friendship (graph &key from-id to-id heart-code description)
  (assert graph)
  (assert (and from-id to-id heart-code))
  (let ((from  (nobit@:get-friend graph :%id  from-id))
        (to    (nobit@:get-friend graph :%id  to-id))
        (heart (nobit@:get-heart :code (str2keyword heart-code))))
    (assert (and from to heart))
    (nobit@:tx-make-frendship graph from to heart :description description)))
