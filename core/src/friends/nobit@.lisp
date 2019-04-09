(in-package :nobit@)

(defun action2json (action)
  (let ((type (getf action :type)))
    (cond ((eq :call-operator type)
           (list :|type|     type
                 :|contents| (let ((contents (getf action :contents)))
                               (list :|symbol| (princ-to-string (getf contents :symbol))
                                     :|args| (list :|normal|   (getf contents :normal)
                                                   :|keys|     (getf contents :keys)
                                                   :|rest|     (getf contents :rest)
                                                   :|optional| (getf contents :optional)))))))))

(defmethod jojo:%to-json ((obj nobit@))
  (let ((action (action2json (slot-value obj 'action))))
    (jojo:with-object
      (jojo:write-key-value "_id"      (slot-value obj 'up:%id))
      (jojo:write-key-value "name"     (slot-value obj 'name))
      (jojo:write-key-value "location" (location2json   (slot-value obj 'location)))
      (jojo:write-key-value "action"   (or action :null))
      (jojo:write-key-value "workings" (length (find-from-pocket :nobit@-id (up:%id obj))))
      (jojo:write-key-value "_class"   "NOBIT@"))))


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
