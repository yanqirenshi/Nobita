#|

This file is a part of nobita project.
Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)

|#

(in-package :nobita)

(defclass flow ()
  ((name :documentation ""
         :accessor      name
         :initarg       :name
         :initform      "i don't have a name.")
   (from :documentation ""
         :accessor      from
         :initarg       :from
         :initform      nil)
   (to :documentation ""
       :accessor      to
       :initarg       :to
       :initform      nil)))


(defun make-port ()
  (let ((hm (make-hash-table)))
    (setf (gethash :in hm)  nil)
    (setf (gethash :out hm) nil)
    hm))


(defclass process (heart)
  ((name :documentation ""
         :accessor      name
         :initarg       :name
         :initform      "i don't have a name.")
   (core :documentation ""
         :accessor      core
         :initarg       :core
         :initform      nil)
   (port :documentation ""
         :accessor      port
         :initarg       :port
         :initform      (make-port))
   (start-time :documentation ""
               :accessor      start-time
               :initarg       :start-time
               :initform      nil)
   (end-time :documentation ""
             :accessor      start-time
             :initarg       :start-time
             :initform      nil)))

(defvar *nobita* (make-instance 'nobita :name "の○太"))

(defmethod beat ((nobita nobita))
  nobita)


(defmethod do!core (core in-ports out-ports)
  "これはマクロにせんとイケんねぇ。"
  (multiple-value-bind (v1)
      (eval (read-from-string core))
    (list :ret 1 :val v1)))


(defmethod do!process ((process process))
  (let ((result (do!core (core process) nil nil)))
    result))


(do!process (make-instance 'process :core "(+ 1 2)"))


(defmethod get-ports ((process process) type)
  (gethash type (port process)))


(defmethod add-flow ((process process) type (flow flow))
  (let ((port (port process)))
    (setf (gethash type port)
          (append (gethash type port) (list flow)))
    process))

(defmethod add-in-flow ((process process) (flow flow))
  (add-flow process :in flow))

(defmethod add-out-flow ((process process) (flow flow))
  (add-flow process :out flow))

(defmethod set-core ((process process) (core list))
  (setf (core process) core))

(defmethod set-core ((process process) (core string))
  (setf (core process) (read-from-string core)))

(defmethod make-process ((name string) core &key in-flow out-flow)
  (let ((p  (make-instance 'process :name name)))
    (set-core p core)
    (mapcar #'(lambda (x) (add-in-flow p x)) in-flow)
    (mapcar #'(lambda (x) (add-out-flow p x)) out-flow)
    p))
;; 定義 -> コンパイル って段階が必要じゃね?
;; なら、脳ってどうなってんの？
;; 各シナプスに定義とモジュールが混在しとるんかね。
;; つうことは入れ子状態かな。




;;;;;
;;;;; printer
;;;;;
(defmethod print-port ((process process))
  (format t "PORT-IN:~%")
  (dolist (port (get-ports process :in) nil)
    (format t "~10a: ~a~%" (name port) port))
  ;;
  (format t "~%PORT-OUT:~%")
  (dolist (port (get-ports process :out) nil)
    (format t "~10a: ~a~%" (name port) port)))

(defmethod print-process ((process process))
  (format t "OBJECT:~%~a~%" process)
  (format t "~%NAME:~%~a~%~%" (name process))
  (print-port process)
  (format t "~%CORE:")
  (pprint (core process)))

