(in-package :nobit@.api.controller)


(defun get-symbol-function (x)
  (handler-case
      (symbol-function x)
    (error () nil)))


(defun package-symbol-list (package-name)
  (let ((package (find-package (STRING-UPCASE package-name)))
        (out nil))
    (do-symbols (s package)
      (when (and (eq package (symbol-package s))
                 (get-symbol-function s))
        (push (list :|full_name| (format nil "~S" s)
                    :|name|      (symbol-name s))
              out)))
    out))
