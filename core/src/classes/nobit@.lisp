(in-package :nobit@)


(defclass nobit@ (node)
  ((action :accessor action :initarg :action :initform nil))
  (:documentation "作業者です。
要求(request)をトリガに作業を実施します。"))


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
      ;; TODO: Action は外出し(別ノード)にするので消しとく。
      ;; (jojo:write-key-value "action"   (or action :null))
      (jojo:write-key-value "workings" (length (find-from-pocket :nobit@-id (up:%id obj))))
      (jojo:write-key-value "_class"   "NOBIT@"))))
