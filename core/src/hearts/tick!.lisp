(in-package :nobit@)

(defvar *hook-heart-core-before* nil)
(defvar *hook-heart-core-after* nil)


(defun heart-core-rm-karma (heart karma)
  (let ((karma-pool (karma-pool heart)))
    (nobit@.karma:rm-karma-at-idea-id karma-pool _id)))


(defun %heart-core (karma)
  (handler-case
      (let ((graph (getf karma :graph))
            (friendship (getf karma :friendship)))
        (spread graph
                (gethash (getf karma :idea_id) (contexts friendship))
                (getf karma :source)
                (get-vertex-at graph
                               (shinra::to-class friendship)
                               :%id (shinra::to-id friendship))))
    (error (e) (nlog "Function: heart-core, ~S~%" e))))


(defun rm-heart-karma (heart karma)
  (let ((karma-pool (nobit@.karma:karma-pool heart)))
    (nobi.karma:rm-karma karma-pool karma)))


(defun heart-core (heart times)
  (declare (ignorable times))
  (when-let ((karma (pop-karma (karma-pool heart))))
    (%heart-core karma)
    (rm-heart-karma heart karma)))


(defun heart-core-before (heart times)
  (let ((func *hook-heart-core-before*))
    (when (functionp func)
      (funcall func heart times))))


(defun heart-core-after (heart times)
  (let ((func *hook-heart-core-after*))
    (when (functionp func)
      (funcall func heart times))))


(defun tick!-error (e heart times)
  (format t "Reisd Error!!!~%heart=~a, times=~a~%<error>~%~a"
          heart
          times
          e))


(defun tick! (heart times)
  (handler-case
      (progn
        (heart-core-before heart times)
        (heart-core        heart times)
        (heart-core-after  heart times))
    (error (e) (tick!-error e heart times))))
