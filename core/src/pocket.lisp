(in-package :nobit@)

(defvar *pocket* `(:list nil
                   :index (:thread      ,(make-hash-table)
                           :nobit@-idea ,(make-hash-table))))

(defun pocket-list (&key (pocket *pocket*))
  (getf pocket :list))

(defun pocket-index (type &key (pocket *pocket*))
  (getf (getf pocket :index) type))

;;;;;
;;;;; get-from-pocket
;;;;;
(defun get-from-pocket-at-nobit@-id-and-ide-id (nobit@-id ide-id &key (pocket *pocket*))
  (let* ((index (pocket-index :nobit@-idea :pocket pocket))
         (ht-tmp (gethash nobit@-id index)))
    (when ht-tmp
      (gethash ide-id ht-tmp))))

(defun get-from-pocket (&key nobit@-id ide-id thread (pocket *pocket*))
  (cond ((and nobit@-id ide-id)
         (get-from-pocket-at-nobit@-id-and-ide-id nobit@-id ide-id :pocket pocket))
        (thread
         (let ((index (pocket-index :thread :pocket pocket)))
           (gethash thread index)))))

(defun find-from-pocket (&key nobit@-id (pocket *pocket*))
  (when nobit@-id
    (let ((out nil)
          (index (gethash nobit@-id (pocket-index :nobit@-idea :pocket pocket))))
      (when index
        (with-hash-table-iterator (generator-fn index)
          (loop
            (multiple-value-bind (more? key value)
                (generator-fn)
              (declare (ignore key))
              (unless more? (return))
              (push value out))))
        out))))


;;;;;
;;;;; add-to-pocket
;;;;;
(defun add-pocket-gethash (id ht)
  (let ((v (gethash id ht)))
    (or v
        (setf (gethash id ht) (make-hash-table)))))

(defun add-to-pocket-nobit@-idea (index nobit@-id ide-id thread)
  (let* ((ht-tmp (add-pocket-gethash nobit@-id index))
         (ht     (add-pocket-gethash ide-id ht-tmp)))
    (setf (gethash ide-id ht-tmp) thread)))

(defun add-to-pocket (nobit@-id ide-id thread &key (pocket *pocket*))
  (let ((index (gethash thread (pocket-index :thread))))
    (unless index
      ;;; Add to list
      (push thread (getf pocket :list))
      ;;; Add to Index.thread
      (let ((index (pocket-index :thread)))
        (setf (gethash thread index) (list :nobit@ nobit@-id :idea ide-id)))
      ;;; Add to Index.nobit@-idea
      (let ((index (pocket-index :nobit@-idea)))
        (add-to-pocket-nobit@-idea index nobit@-id ide-id thread)))))


;;;;;
;;;;; rm-from-pocket
;;;;;
(defun rm-from-pocket (thread &key (pocket *pocket*))
  (when (and thread
             (get-from-pocket :thread thread :pocket pocket))
    ;;;
    ;;; Remove List
    ;;;
    (setf (getf pocket :list)
          (remove thread (getf pocket :list)))
    ;;;
    ;;; Remove Index
    ;;;
    (let ((keys (gethash thread (pocket-index :thread))))
      ;; thread
      (remhash thread (pocket-index :thread))
      ;; nobit@-idea
      (let ((index (pocket-index :nobit@-idea :pocket pocket)))
        (let* ((ht   (gethash (getf keys :nobit@) index)))
          (remhash (getf keys :idea) ht))))))
