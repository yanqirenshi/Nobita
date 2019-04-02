(in-package :nobit@)

;;;;;
;;;;; Action
;;;;;
(defun make-nobit@-action-prot ()
  ;;;
  ;;; call-operator
  ;;;   - :args の実装は後にしようか。
  ;;;
  (list :type     :call-operator
        :contents (list :symbol '+
                        :args   (list :normal   nil
                                      :keys     nil
                                      :rest     nil
                                      :optional nil)))
  (list :type     :evaluation-code
        :contents "...code..."))


;;;;;
;;;;;
;;;;;
(defmethod jojo:%to-json ((obj nobit@))
  (jojo:with-object
    (jojo:write-key-value "_id"      (slot-value obj 'up:%id))
    (jojo:write-key-value "name"     (slot-value obj 'name))
    (jojo:write-key-value "location" (location2json   (slot-value obj 'location)))
    (jojo:write-key-value "action"   (princ-to-string (slot-value obj 'action)))
    (jojo:write-key-value "workings" (length (find-from-pocket :nobit@-id (up:%id obj))))
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
