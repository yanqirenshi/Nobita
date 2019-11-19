(in-package :nobit@.api.controller)


(defun get-operator-symbol (package-name operator-name)
  (let ((package (find-package package-name)))
    (assert package)
    (let ((operator-symbol (find-symbol operator-name package)))
      (assert operator-symbol)
      (let ((operator (symbol-function operator-symbol)))
        (assert operator))
      operator-symbol)))


(defun add-future-tool-in-dora@mon
    (graph dora@mon &key name description package-name operator-name)
  (let* ((operator (get-operator-symbol package-name operator-name))
         (efficacy (nobit@.dora@mon:make-efficacy :call-operator :operator operator)))
    (up:execute-transaction
     (nobit@.dora@mon:tx-make-and-add-future-tool-in-4dp graph
                                                         dora@mon
                                                         :name name
                                                         :description description
                                                         :efficacy efficacy))))
