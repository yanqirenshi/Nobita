(in-package :nobit@)

(defvar *hook-heart-core-before* nil)
(defvar *hook-heart-core-after* nil)

(defun %heart-core (karma)
  (let ((graph (getf karma :graph))
        (friendship (getf karma :friendship)))
    (spread graph
            (gethash (getf karma :idea_id) (contexts friendship))
            (getf karma :source)
            (get-vertex-at graph
                           (shinra::to-class friendship)
                           :%id (shinra::to-id friendship)))))

(defun heart-core (heart times)
  (declare (ignorable times))
  "キューに溜った friendship を順(FILO)に処理する。
今は一つづつじゃけど、複数づつ出来るようにパラメータ化してもええねぇ。"
  (when-let ((karma (pop-karma (karma-pool heart))))
    (%heart-core karma)))

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
