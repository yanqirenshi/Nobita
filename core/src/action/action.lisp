(in-package :nobit@)

;;;;;
;;;;; Call Operator
;;;;;
(defun normalize-call-operator-args (args)
  (when (listp args)
    (list :normal   (getf args :normal)
          :keys     (getf args :keys)
          :rest     (getf args :rest)
          :optional (getf args :optional))))

(defgeneric make-nobit@-action-call-operator (operator args)
  (:method ((operator function) args)
    (list :type     :call-operator
          :contents (list :symbol operator
                          :args (normalize-call-operator-args args)))))


;;;;;
;;;;; Evaluation Code
;;;;;
(defun make-nobit@-action-evaluation-code (code)
  (list :type     :evaluation-code
        :contents code))


;;;;;
;;;;; Action
;;;;;
(defun make-nobit@-action (type &key operator args code)
  (cond ((eq :evaluation-code type)
         (make-nobit@-action-evaluation-code code))
        ((eq :call-operator type)
         (make-nobit@-action-call-operator operator args))
        (t (error "Not Supported type=~S" type))))
