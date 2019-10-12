(defpackage nobit@.utilities
  (:nicknames :nobi.utilities)
  (:use #:cl)
  (:export #:class-symbol))
(in-package :nobit@.utilities)

(defun class-symbol (obj)
  (class-name (class-of obj)))
