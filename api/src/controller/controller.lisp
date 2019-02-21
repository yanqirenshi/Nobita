(in-package :nobit@.api.controller)

;;;;;
;;;;; Heart
;;;;;
(defclass heart ()
  ((name  :accessor name  :initarg :name  :initform nil :type 'string)
   (bpm   :accessor bpm                   :initform 0   :type 'number)
   (times :accessor times :initarg :times :initform 0   :type 'number)
   (queue :accessor queue :initarg :queue :initform nil :type 'list)))

(defmethod jojo:%to-json ((obj heart))
  (jojo:with-object
    (jojo:write-key-value "name"  (slot-value obj 'name))
    (jojo:write-key-value "bpm"   (slot-value obj 'bpm))
    (jojo:write-key-value "times" (slot-value obj 'times))
    (jojo:write-key-value "queue" (slot-value obj 'queue))))

(defun heart2heart (source)
  (let ((target (make-instance 'heart)))
    (setf (name target)  (rhythm:name source))
    (setf (bpm target)   (rhythm:bpm source))
    (setf (times target) (rhythm:times source))
    (let ((pool (nobit@::karma-pool source)))
      (setf (queue target) (list :size (nobit@.karma:qsize pool))))
    target))

(defun find-hearts ()
  (mapcar #'heart2heart (nobit@:find-hearts)))

;;;;;
;;;;; Nodes
;;;;;
(defun nodes ()
  (let ((graph nobit@.graph:*graph*))
    (nconc (nobit@:find-g*an graph)
           (nobit@:find-4neo graph)
           (nobit@:find-nobit@ graph))))

;;;;;
;;;;; Edges
;;;;;
(defun edges ()
  (let ((graph nobit@.graph:*graph*))
    (nobit@:find-frendship graph)))
