(in-package :nobit@)

(defun heart-core (heart times)
  "キューに溜った friendship を順(FILO)に処理します。"
  (declare (ignore times))
  (when-let ((karma (pop-karma heart)))
    (let ((graph (getf karma :graph))
          (friendship (getf karma :friendship)))
      (spread graph
              (getf karma :idea)
              (getf karma :source)
              (get-vertex-at graph
                             (shinra::to-class friendship)
                             :%id (shinra::to-id friendship))))))

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

(defun start ()
  (dolist (heart (hash-table-values *hearts*))
    (start-heart heart)))
