(in-package :nobit@.api.controller)


(defun get-symbol-function (x)
  (handler-case
      (symbol-function x)
    (error () nil)))


(defun make-package-symbol-list-data (package symbol)
  (multiple-value-bind (s status)
      (find-symbol (symbol-name symbol) package)
    (let ((name (symbol-name s))
          (full-name (format nil "~S" s)))
      (list :|full_name| full-name
            :|name|      name
            :|status|    status
            :|export|    (not (search "::" full-name))
            :|package|   (package-name package)))))


(defun package-symbol-list (package-name)
  (let ((package (find-package (STRING-UPCASE package-name)))
        (out nil))
    (do-symbols (s package)
      (when (and (eq package (symbol-package s))
                 (get-symbol-function s))
        (push (make-package-symbol-list-data package s)
              out)))
    out))
