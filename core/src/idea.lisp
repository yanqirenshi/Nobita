(in-package :nobit@)

(defvar *idea-id-counter* 0)

(defun make-idea ()
  `(:_id ,(incf *idea-id-counter*)
    :contents nil
    :results nil
    :timestamp (:start ,(local-time:now) :end nil)))
