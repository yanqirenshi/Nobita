(in-package :nobit@)

#|
  今のところ心臓は一つ
|#

(defun heart-core (heart times)
  (declare (ignore heart times))
  (when-let ((context (pop-context)))
    (let ((graph (getf context :graph))
          (friendship (getf context :friendship)))
      (spread graph
              (getf context :idea)
              (getf context :source)
              (get-vertex-at graph
                             (shinra::to-class friendship)
                             :%id (shinra::to-id friendship))))))

(defvar *heart*
  (make-heart :name "nobita's-heart"
              :core #'(lambda (heart times)
                        (heart-core heart times))))

(defun start ()
  (tune *heart* 1))

(defun stop ()
  (tune *heart* 0))
