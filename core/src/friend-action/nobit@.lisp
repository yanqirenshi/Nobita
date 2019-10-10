(in-package :nobit@)


(defun ation!-core-call-operator (graph action nobit@ idea source)
  (let ((operator (getf (getf action :contents) :symbol)))
    (funcall operator
             :graph  graph
             :idea   idea
             :nobit@ nobit@
             :source source)))


(defun ation!-core-evaluation-code (graph action nobit@ idea source)
  ;; TODO: これらは ignore せずに、「環境」として引き渡すべき。
  (declare (ignore graph nobit@ idea source))
  (let ((code (getf action :contents)))
    (eval (read-from-string code))))


(defun ation!-core-operator (action)
  (let ((type (getf action :type)))
    (cond ((eq :evaluation-code type) #'ation!-core-evaluation-code)
          ((eq :call-operator type)   #'ation!-core-call-operator)
          (t (error "Not Supported type=~S" type)))))


(defun ation!-core (graph action nobit@ idea source)
  (handler-case
      (let ((operator (ation!-core-operator action)))
        (funcall operator graph action nobit@ idea source))
    (error (e) e)))


(defmethod action! (graph (nobit@ nobit@) idea source)
  (format t "~S: Start Action~%" nobit@)
  (let ((action (action nobit@))
        (new-idea (copy-idea idea)))
    (when action
      (setf (getf new-idea :contents)
            (ation!-core graph action nobit@ idea source)))
    (format t "~S: Complete Action~%" nobit@)
    new-idea))
