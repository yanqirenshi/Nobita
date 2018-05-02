(in-package :nobit@)

(defun heart-core (heart times)
  (declare (ignore times))
  (when-let ((context (pop-context heart)))
    (let ((graph (getf context :graph))
          (friendship (getf context :friendship)))
      (spread graph
              (getf context :idea)
              (getf context :source)
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
         :seachd  (make-heart "seachd"  #'heart-core))))

(defun start ()
  (dolist (heart (hash-table-values *hearts*))
    (start-heart heart)))
