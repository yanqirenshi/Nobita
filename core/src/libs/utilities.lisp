(defpackage nobit@.utilities
  (:nicknames :nobi.utilities)
  (:use #:cl)
  (:export #:class-symbol
           #:nlog
           #:with-nlog))
(in-package :nobit@.utilities)


(defun class-symbol (obj)
  (class-name (class-of obj)))


(defmacro nlog (format params)
  `(apply #'format t ,format ,params))


(defmacro with-nlog ((name) &body body)
  ;; TODO: もんだいあり
  `(progn
     (nlog "~a: Start~%" ,name)
     ,@body
     (nlog "~a: End~%" ,name)))
