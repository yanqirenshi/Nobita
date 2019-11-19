(in-package :nobit@.dora@mon)

;;;;;
;;;;; Call Operator
;;;;;
(defun normalize-call-operator-args (args)
  (when (listp args)
    (list :normal   (getf args :normal)
          :keys     (getf args :keys)
          :rest     (getf args :rest)
          :optional (getf args :optional))))


(defgeneric make-efficacy.call-operator (operator &key args)
  (:method ((operator symbol) &key args)
    (assert (not (keywordp operator)))
    (assert (get-symbol-function operator))
    (list :type     :call-operator
          :contents (list :symbol operator
                          :args (normalize-call-operator-args args)))))


;;;;;
;;;;; Evaluation Code
;;;;;
(defun make-efficacy.evaluation-code (code &key (package (find-package "CL-USER")))
  (assert package)
  (list :type     :evaluation-code
        :contents (list :package package
                        :code code)))


(defun show-efficacy (future-tool idea source)
  (declare (ignore future-tool idea source))
  nil)


;;;;;
;;;;; Main
;;;;;
(defun make-efficacy (type &key operator args code package)
  (cond ((eq type :call-operator)
         (make-efficacy.call-operator operator :args args))
        ((eq type :evaluation-code)
         (make-efficacy.evaluation-code code :package package))
        (t (error "Not Supported Type. type=~S" type))))



;;;;;
;;;;; Assertion
;;;;;
(defun assert-dora@mon-use-operator (dora@mon operator)
  (declare (ignore dora@mon))
  (let ((package (symbol-package operator)))
    (declare (ignore package))
    ;; TODO: check package in dora@mon's package.
    t))


(defun assert-efficacy (efficacy &key dora@mon)
  (assert (listp efficacy))
  (let ((type (getf efficacy :type)))
    (assert type)
    (assert (eq :call-operator type))) ;; MEMO: いまはこれだけ (at 2019/11/20)
  (let ((contents (getf efficacy :contents)))
    (assert contents)
    (let ((symbol (getf contents :symbol)))
      (assert symbol)
      (assert (symbolp symbol))
      (assert (get-symbol-function symbol))
      (when dora@mon
        (assert-dora@mon-use-operator dora@mon symbol)))))
