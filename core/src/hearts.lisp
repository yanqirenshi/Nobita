(in-package :nobit@)

(defun heart-core (heart times)
  (format t "~a, ~a~%" heart times))

(defvar *heart*
  (make-heart :name "nobita's-heart"
              :core #'(lambda (heart times)
                        (heart-core heart times))))

(defun start ()
  (tune *heart* 1))

(defun stop ()
  (tune *heart* 0))
