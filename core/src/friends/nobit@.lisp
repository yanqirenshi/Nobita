(in-package :nobit@)

(defmethod jojo:%to-json ((obj nobit@))
  (jojo:with-object
    (jojo:write-key-value "_id"      (slot-value obj 'up:%id))
    (jojo:write-key-value "name"     (slot-value obj 'name))
    (jojo:write-key-value "location" (location2json   (slot-value obj 'location)))
    (jojo:write-key-value "action"   (princ-to-string (slot-value obj 'action)))
    (jojo:write-key-value "_class"   "NOBIT@")))

(defun find-nobit@ (graph)
  (find-vertex graph 'nobit@))

(defun get-nobit@ (graph &key %id)
  (get-vertex-at graph 'nobit@ :%id %id))

(defun tx-make-nobit@ (graph &key (name "Nobit@:???") action)
  (tx-make-vertex graph 'nobit@
                  `((name ,name)
                    (action ,action))))

(defgeneric nobit@-p (obj)
  (:method ((obj nobit@))
    t)
  (:method (obj)
    nil))

(defmethod print-object ((obj nobit@) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))

(defun ation!-core (graph action nobit@ idea source)
  (format t "~S: Start Action~%" nobit@)
  (unwind-protect
       (or (funcall action
                    :graph graph
                    :idea idea
                    :source source
                    :nobit@ nobit@)
           idea)
    (format t "~S: Complete Action~%" nobit@)))

(defgeneric action! (graph nobit@ idea source)
  (:method (graph (nobit@ nobit@) idea source)
    (let ((action (action nobit@)))
      (if (null action)
          idea
          (ation!-core graph action nobit@ idea source)))))
