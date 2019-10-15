(in-package :nobit@)


;;;;;
;;;;; tx-make-edge-nobit@2future-tool
;;;;;
(defgeneric tx-make-edge-nobit@2future-tool (graph nobit@ future-tool &key description)
  (:method (graph (from nobit@) (to future-tool) &key description)
    ;; (assert-frendship graph to from :1-n)
    ;; (assert-empty-frendship graph from to edge-type)
    (tx-make-edge graph 'edge from to :lend-to
                  `((description , description)))))


(defun get-future-tool-by-nobit@ (graph &key nobit@)
  (car (shinra:find-r-vertex graph 'edge :from nobit@
                                         :edge-type :lend-to
                                         :vertex-class 'future-tool)))

(defun solve (graph nobit@ idea source)
  (let ((future-tool (get-future-tool-by-nobit@ graph :nobit@ nobit@))
        (new-idea    (copy-idea idea)))
    (when future-tool
      (setf (idea-contents new-idea)
            (show-efficacy future-tool idea source)))
    new-idea))



;;;;;
;;;;; action
;;;;;
;; (defun ation!-core-call-operator (graph action nobit@ idea source)
;;   (let ((operator (getf (getf action :contents) :symbol)))
;;     (funcall operator
;;              :graph  graph
;;              :idea   idea
;;              :nobit@ nobit@
;;              :source source)))


;; (defun ation!-core-evaluation-code (graph action nobit@ idea source)
;;   ;; TODO: これらは ignore せずに、「環境」として引き渡すべき。
;;   (declare (ignore graph nobit@ idea source))
;;   (let ((code (idea-contents action)))
;;     (eval (read-from-string code))))


;; (defun ation!-core-operator (action)
;;   (let ((type (getf action :type)))
;;     (cond ((eq :evaluation-code type) #'ation!-core-evaluation-code)
;;           ((eq :call-operator type)   #'ation!-core-call-operator)
;;           (t (error "Not Supported type=~S" type)))))


;; (defun ation!-core (graph action nobit@ idea source)
;;   (handler-case
;;       (let ((operator (ation!-core-operator action)))
;;         (funcall operator graph action nobit@ idea source))
;;     (error (e) e)))


;; (defmethod action! (graph (nobit@ nobit@) idea source)
;;   (let ((action   (action nobit@))
;;         (new-idea (copy-idea idea)))
;;     (when action
;;       (setf (idea-contents new-idea)
;;             (ation!-core graph action nobit@ idea source)))
;;     new-idea))
