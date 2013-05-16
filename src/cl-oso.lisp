#|
  This file is a part of cl-oso project.
  Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)
|#

(in-package :cl-user)
(defpackage cl-oso
  (:use :cl :cl-who :cl-css))
(in-package :cl-oso)

(defvar *acceptor* nil)
(defvar *dispatch-list*
  '(("^/oso$"             'page-home)
    ("^/oso/css/oso.css$" 'page-oso.css)))

;;
(defun dispatch-all (list)
  (when list
    (let ((rec (car list)))
      (push (hunchentoot:create-regex-dispatcher (first rec) (second rec))
	    hunchentoot:*dispatch-table*)
      (dispatch-all (cdr list)))))

;;
(defun start-http-svr ()
  ;; setting hunchentoot
  (setq hunchentoot:*hunchentoot-default-external-format*
	(flex:make-external-format :utf-8 :eol-style :lf))
  (setq hunchentoot:*default-content-type* "text/html; charset=utf-8")
  (setf *acceptor*
	(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242)))
  ;; 
  (dispatch-all *dispatch-list*))


;;
(defun page-oso.css ()
  (setf (hunchentoot:content-type*) "text/css")
  (cl-css:css '((html :background \#DC8847))))


;; home page
(defun page-home ()
  (setf (hunchentoot:content-type*) "text/html")
  (cl-who:with-html-output-to-string
      (str nil :prologue t)
    (:html (:head (:title "おまえ")
		  (:link :rel "stylesheet" :type "text/css" :href "/oso/css/oso.css"))
	   (:body (:div "俺の仕事はおまえのもの。おまえの仕事はおまえのもの。")
		  (:div "ログインフォーム")))))

