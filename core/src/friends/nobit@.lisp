(in-package :nobit@)


(defun find-nobit@ (graph)
  (find-vertex graph 'nobit@))


(defun get-nobit@ (graph &key %id)
  (get-vertex-at graph 'nobit@ :%id %id))


(defun tx-make-nobit@ (graph &key (name "Nobit@:???") (description "") action)
  (tx-make-vertex graph 'nobit@
                  `((name ,name)
                    (description ,description)
                    (action ,action))))


(defgeneric nobit@-p (obj)
  (:method ((obj nobit@))
    t)
  (:method (obj)
    nil))


(defmethod print-object ((obj nobit@) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))



;;;;;
;;;;;
;;;;;
(defun find-edge-nobit@2future-tool (graph &key nobit@)
  (shinra:find-r graph
                 'edge
                 :from          nobit@
                 :vertex-class 'future-tool
                 :edge-type    :have-to))


(defun get-edge-nobit@2future-tool (graph nobit@ future-tool)
  (find-if #'(lambda (r)
               (= (up:%id future-tool) (up:%id (getf r :vertex))))
           (find-edge-nobit@2future-tool graph :nobit@ nobit@)))


(defun already-have-future-tool-p (graph nobit@ future-tool)
  (find-if #'(lambda (r)
               (/= (up:%id future-tool) (up:%id (getf r :vertex))))
           (find-edge-nobit@2future-tool graph :nobit@ nobit@)))


(defgeneric tx-make-edge-nobit@2future-tool
    (graph from to &key description)
  (:method (graph (nobit@ nobit@) (future-tool future-tool) &key description)
    (when (already-have-future-tool-p graph nobit@ future-tool)
      (error "Already have Future-toole."))
    (shinra:tx-make-edge graph
                         'edge
                         nobit@
                         future-tool
                         :have-to
                         `((description ,description)))))


(defgeneric tx-ensure-edge-nobit@2future-tool
    (graph nobit@ future-tool &key description)
  (:method (graph nobit@ future-tool &key description)
      (let ((r (get-edge-nobit@2future-tool graph nobit@ future-tool)))
        (if r
            (getf r :edge)
            (tx-make-edge-nobit@2future-tool graph nobit@ future-tool :description description)))))
