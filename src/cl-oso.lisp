#|
  This file is a part of cl-oso project.
  Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)
|#

(in-package :cl-user)
(defpackage cl-oso
  (:use :cl))
(in-package :cl-oso)

(defvar *acceptor* nil)
(defun start-http-svr ()
  (setq hunchentoot:*hunchentoot-default-external-format*
	(flex:make-external-format :utf-8 :eol-style :lf))
  (setq hunchentoot:*default-content-type* "text/html; charset=utf-8")
  (setf *acceptor*
	(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))))

(defun dispatch-all ()
  (push  (hunchentoot:create-regex-dispatcher "^/oso$" 'page-home) hunchentoot:*dispatch-table*)
  (push  (hunchentoot:create-regex-dispatcher "^/oso/css/oso.css$" 'page-oso.css) hunchentoot:*dispatch-table*))

;;
(defun page-oso.css ()
  (setf (hunchentoot:content-type*) "text/css")
  "body {background:#f00;}")

;; home page
(defun page-home ()
  (setf (hunchentoot:content-type*) "text/html")
  (cl-who:with-html-output-to-string
      (str nil :prologue t)
    (:html (:head (:title "おまえ")
		  (:link :rel "stylesheet" :type "text/css" :href "/oso/css/oso.css"))
	   (:body (:div "俺の仕事はおまえのもの。おまえの仕事はおまえのもの。")
		  (:div "ログインフォーム")))))

