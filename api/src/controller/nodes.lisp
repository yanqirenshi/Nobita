(in-package :nobit@.api.controller)


(defun nodes ()
  (let ((graph nobit@.graph:*graph*))
    (nconc (nobit@:find-g*an graph)
           (nobit@:find-4neo graph)
           (nobit@:find-nobit@ graph))))


(defun get-node (graph &key type %id)
  (cond ((eq type :g*an)   (nobit@:get-g*an   graph :%id %id))
        ((eq type :4neo)   (nobit@:get-4neo   graph :%id %id))
        ((eq type :nobit@) (nobit@:get-nobit@ graph :%id %id))
        (t (error "Not Found Node. keys=~S" (list type %id)))))


(defun save-node-location (%id type contents)
  ;;("3" "4NEO" (("z" . 0) ("y" . 0) ("x" . 0) ("hold")))
  (let* ((graph nobit@.graph:*graph*)
         (node (get-node graph :type type :%id %id))
         (x    (cdr (assoc "x" contents :test 'string=)))
         (y    (cdr (assoc "y" contents :test 'string=)))
         (z    (cdr (assoc "z" contents :test 'string=)))
         (hold (cdr (assoc "hold" contents :test 'string=))))
    (nobi:tx-save-location graph node :x x :y y :z z :hold hold)))
