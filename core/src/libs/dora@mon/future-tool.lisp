(in-package :nobit@.dora@mon)


(defclass future-tool (shinra:shin)
  ((code        :accessor code        :initarg :code        :initform "")
   (name        :accessor name        :initarg :name        :initform "")
   (description :accessor description :initarg :description :initform "")
   (efficacy    :accessor efficacy    :initarg :efficacy    :initform ""))
  (:documentation ""))


(defun efficacy2efficacy-ocre (efficacy)
  (let* ((contents (getf efficacy :contents))
         (symbol (getf contents :symbol))
         (args (getf contents :args)))
    (list :|type| (getf efficacy :type)
          :|contents| (list :|symbol|  (symbol-name symbol)
                            :|package| (package-name (symbol-package symbol))
                            :|args|    (list :|normal|   (getf args :normal)
                                             :|keys|     (getf args :keys)
                                             :|rest|     (getf args :rest)
                                             :|optional| (getf args :optional))))))


(defun efficacy2efficacy (efficacy)
  (if (null efficacy)
      :null
      (efficacy2efficacy-ocre efficacy)))


(defmethod jojo:%to-json ((obj future-tool))
  (jojo:with-object
    (jojo:write-key-value "_id"         (slot-value obj 'up:%id))
    (jojo:write-key-value "code"        (slot-value obj 'code))
    (jojo:write-key-value "name"        (slot-value obj 'name))
    (jojo:write-key-value "description" (or (slot-value obj 'description) ""))
    (jojo:write-key-value "efficacy"    (efficacy2efficacy (slot-value obj 'efficacy)))
    (jojo:write-key-value "_class"      "FUTURE-TOOL")))


(defmethod jojo:%to-json ((obj dora@mon))
  (jojo:with-object
    (jojo:write-key-value "_id"         (slot-value obj 'up:%id))
    (jojo:write-key-value "name"        (slot-value obj 'name))
    (jojo:write-key-value "description" (or (slot-value obj 'description) ""))
    (jojo:write-key-value "_class"      "DORA@MON")))


(defun find-future-tool (graph)
  (shinra:find-vertex graph 'future-tool))


(defun get-future-tool (graph &key %id)
  (when %id
    (shinra:get-vertex-at graph 'future-tool :%id %id)))


(defun tx-make-future-tool
    (graph &key (name "future-tool:???") (description "") (efficacy nil))
  (assert (stringp name))
  (assert (stringp description))
  (assert-efficacy efficacy)
  (shinra:tx-make-vertex graph
                         'future-tool
                         `((name ,name)
                           (description ,description)
                           (efficacy , efficacy))))


(defmethod print-object ((obj future-tool) out)
  (print-unreadable-object (obj out :type t)
    (format out "%id:~s ,name:~s" (up:%id obj) (name obj))))


(defun tx-change-future-tool-name (graph future-tool name)
  (up:tx-change-object-slots graph
                             'future-tool
                             (up:%id future-tool)
                             `((name ,name))))
