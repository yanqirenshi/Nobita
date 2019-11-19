(in-package :nobit@.dora@mon)


(defun get-symbol-function (x)
  (handler-case
      (symbol-function x)
    (error () nil)))
