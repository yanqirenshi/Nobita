(in-package :nobit@)


(defvar *hearts*
  (plist-hash-table
   (list :aon     (make-heart "aon"     #'heart-core)
         :da      (make-heart "da"      #'heart-core)
         :tri     (make-heart "tri"     #'heart-core)
         :ceithir (make-heart "ceithir" #'heart-core)
         :coig    (make-heart "coig"    #'heart-core)
         :sia     (make-heart "sia"     #'heart-core)
         :seachd  (make-heart "seachd"  #'heart-core)
         :ochd    (make-heart "ochd"    #'heart-core)))
  "心臓はデフォルトで七つ用意する。")


(defun find-hearts ()
  (alexandria:hash-table-values *hearts*))


(defun get-heart (&key code (hearts *hearts*))
  (gethash code hearts))


(defun add-heart (code heart &key (hearts *hearts*))
  (assert (not (get-heart :code code :hearts hearts)))
  (setf (gethash code hearts) heart))


(defun rm-heart (code &key (hearts *hearts*))
  (when (get-heart :code code :hearts hearts))
  (remhash code hearts))


(defun start ()
  (dolist (heart (hash-table-values *hearts*))
    (start-heart heart)))
