(in-package :nobit@)

(defun %heart-core (karma)
  (let ((graph (getf karma :graph))
        (friendship (getf karma :friendship)))
    (spread graph
            (gethash (getf karma :idea_id) (contexts friendship))
            (getf karma :source)
            (get-vertex-at graph
                           (shinra::to-class friendship)
                           :%id (shinra::to-id friendship)))))

(defvar *hook-heart-core-before* nil)
(defvar *hook-heart-core-after* nil)

(defun heart-core-before (heart times)
  (let ((func *hook-heart-core-before*))
    (when (functionp func)
      (funcall func heart times))))

(defun heart-core-after (heart times)
  (let ((func *hook-heart-core-after*))
    (when (functionp func)
      (funcall func heart times))))

(defun heart-core (heart times)
  "キューに溜った friendship を順(FILO)に処理します。"
  (handler-case
      (progn
        (heart-core-before heart times)
        (when-let ((karma (pop-karma (karma-pool heart))))
          (%heart-core karma))
        (heart-core-after heart times))
    (error (e) (format t "Reisd Error!!!~%heart=~a, times=~a~%<error>~%~a"
                       heart
                       times
                       e))))

(defvar *hearts*
  (plist-hash-table
   (list :aon     (make-heart "aon"     #'heart-core)
         :da      (make-heart "da"      #'heart-core)
         :tri     (make-heart "tri"     #'heart-core)
         :ceithir (make-heart "ceithir" #'heart-core)
         :coig    (make-heart "coig"    #'heart-core)
         :sia     (make-heart "sia"     #'heart-core)
         :seachd  (make-heart "seachd"  #'heart-core)))
  "心臓はデフォルトで七つ用意する。")

(defun get-heart (&key code (hearts *hearts*))
  (gethash code hearts))

(defun start ()
  (dolist (heart (hash-table-values *hearts*))
    (start-heart heart)))
