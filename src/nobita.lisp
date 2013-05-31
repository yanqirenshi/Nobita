#|
  This file is a part of nobita project.
  Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)
|#

(in-package :cl-user)
(defpackage nobita
  (:nicknames :nobi)
  (:use :cl :cl-who :cl-css))
(in-package :nobita)

;;;
;;; log
;;;
(defvar *log* nil)
(defun log-put (type message)
  (push (list :type type :message message)
        *log*))
(defun log-clear () (setf *log* nil))



;;;
;;; pool
;;;
(defclass brahman () ())
(defclass atman (brahman) ((id :accessor id :initarg id :initform nil)))

(defclass pool ()
  ((hm :accessor hm :initarg :hm :initform (make-hash-table :test 'equalp))
   (id-counter :accessor id-counter :initarg :id-counter :initform 0)))

(defvar *pool-omae* (make-instance 'pool))

(defmethod get-new-id ((pool pool))
  (setf (id-counter pool)
        (+ 1 (id-counter pool))))

(defmethod put-atman ((pool pool) (atman atman))
  (let ((hm (hm pool)))
    (when (not (gethash (id atman) hm))
      (setf (id atman) (get-new-id pool)))
    (setf (gethash (id atman) hm) atman)))

(defmethod get-atman-at-id ((pool pool) id)
  (when (and pool id)
    (gethash id (hm pool))))

(defmethod remove-atman-at-id ((pool pool) id)
  (when (and pool id)
    (remhash id (hm pool))))


;;;
;;; omae
;;;
(defclass omae (atman)
  ((id          :accessor  id           :initarg :id            :initform nil)
   (name        :accessor name          :initarg :name          :initform "I dont have a name.")
   (note        :accessor note          :initarg :note          :initform "")
   ;; location
   (x           :accessor x             :initarg :x             :initform 0)
   (y           :accessor y             :initarg :y             :initform 0)
   (z           :accessor z             :initarg :z             :initform 0)
   ;; submit
   (status      :accessor status        :initarg :status        :initform 0)
   (thread      :accessor thread        :initarg :thread        :initform nil)
   (timestamp   :accessor timestamp     :initarg :timestamp     :initform nil)))

(defclass omae-timer (omae)
  ((datetime :accessor datetime :initarg :datetime  :initform nil)))

(defclass omae-wait (omae)
  ((time-wait :accessor time-wait :initarg :time-wait  :initform nil)))

(defclass omae-cl (omae)
  ((code :accessor code :initarg :code  :initform nil)))

(defmethod status-next ((omae omae))
  (let ((now (status omae)))
    (push (list :status now
                :end (get-universal-time))
          (timestamp omae))
    (setf (status omae) (+ now 1))
    (push (list :status (status omae)
                :start (get-universal-time))
          (timestamp omae))))

;; TODO: なんか、これクロージャを返すようにして。 cl+:enter-thread ではそのクロージャを入力にしたやつを作ったほうが良さそうな。。。
(defmacro make-thread-core (omae process)
  `(progn
     (status-next ,omae)
     ,process
     (status-next ,omae)))

(defmethod start ((omae omae-cl))
  (let ((process (read-from-string (code omae))))
    (cl+:enter-thread ("nobita")
      (make-thread-core omae process))))

(defmethod get-msg ((omae omae) port msg)
  ())
(defmethod put-msg ((omae omae) port data)
  ;; air(situation) を取得する。
  ())

;;;
;;; +--------+                 +--------+
;;; | omae:A |o--- port:A --->o| omae:B |
;;; |        |                 +--------+
;;; |        |                 +--------+
;;; |        |o--- port:B --->o| omae:C |
;;; +--------+                 +--------+
;;;
(defvar *situation* nil)
(defclass air ()
  ((from      :accessor from      :initarg :from      :initform nil)
   (to        :accessor to        :initarg :to        :initform nil)
   (port      :accessor port      :initarg :port      :initform nil)
   (status    :accessor status    :initarg :status    :initform :born)
   (contents  :accessor contents  :initarg :contents  :initform nil)
   (timestamp :accessor timestamp :initarg :timestamp :initform (list :create (get-universal-time)))))


(defmethod situation-make ((from omae) (to omae) &key port)
  (let ((exist (situation-get from to port)))
    (if exist
        (error "この situation はすでに登録されています。 situation=~a" exist)))
  (if (eq from to) (error "from と to が同じ omae です。from=~a, to=~a" from to))
  (push (make-instance 'air :from from :to to :port port)
        *situation*))


(defmethod situation-get ((from omae) (to omae) port)
  (if (null port) (error "port は必須入力です。"))
  (remove-if-not #'(lambda (air)
                     (and (eq from (from air))
                          (eq to   (to air))
                          (eq port (port air))))
                 *situation*))


(defun situation-find (&key from to port (pool *situation*))
  "situation から air を検索する関数です。
本当はマクロで書きたいけど、まだ実力が伴わないんです。。。"
  (cond ((and from to port)
         (remove-if-not #'(lambda (air)
                            (and (eq from (from air))
                                 (eq to   (to   air))
                                 (eq port (port air))))
                        pool))
        ((and (and from to)
              (null port))
         (remove-if-not #'(lambda (air)
                            (and (eq from (from air))
                                 (eq to   (to   air))))
                        pool))
        ((and (and from)
              (and (null to) (null port)))
         (remove-if-not #'(lambda (air)
                            (and (eq from (from air))))
                        pool))
        ((and (and from port)
              (null to))
         (remove-if-not #'(lambda (air)
                            (and (eq from (from air))
                                 (eq port (port air))))
                        pool))
        ((and (and to)
              (and (null from) (null port)))
         (remove-if-not #'(lambda (air)
                            (and (eq to (to air))))
                        pool))
        ((and (and to port)
              (null from))
         (remove-if-not #'(lambda (air)
                            (and (eq to   (to   air))
                                 (eq port (port air))))
                        pool))
        (t (error "この検索パターンには対応していません。from=~a, to=~a, port=~a" from to port))))


(defmethod feel ((omae omae) &key port)
  "空気を読む(感じる)という関数です。
他の omae が表現した事を受け取ります。"
  (mapcar #'(lambda (air)
              (contents air))
          (situation-find :to omae :port port)))


(defmethod express ((omae omae) &key port contents)
  "(何かを)表現するという関数です。
この関数で 伝えるべきひとに表現を伝えます。"
  (mapcar #'(lambda (air)
              (setf (contents air) contents)
              (push (list :express (get-universal-time))
                    (timestamp air)))
          (situation-find :from omae :port port)))






;;;
;;; beat
;;;
(defclass beat ()
  ((id :accessor id :initarg :id :initform nil)
   (bpm :accessor bpm :initarg :bpm :initform 3)
   (life :accessor life :initarg :life :initform t)))

(defmethod tick ((beat beat))
  (log-put :info (format nil "tickt : ~a" (get-universal-time))))


(defmethod start ((beat beat))
  (cl+:enter-thread ((format nil "beat-~a" (id beat)))
    (do () ((not (life beat)))
      (tick beat)
      (sleep (bpm beat)))))

(defvar *beat* (make-instance 'beat :id "test"))


;;;
;;; test code
;;;
(defun test-data-gen ()
  (defparameter *omae-a* (make-instance 'omae-cl :name "oame-a"))
  (defparameter *omae-b* (make-instance 'omae-cl :name "oame-b"))
  (defparameter *air*
    (situation-make *omae-a* *omae-b* :port :job-a)))