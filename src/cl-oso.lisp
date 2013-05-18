#|
  This file is a part of cl-oso project.
  Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)
|#

(in-package :cl-user)
(defpackage cl-oso
  (:use :cl :cl-who :cl-css))
(in-package :cl-oso)

(defmacro dispatch (name uri body &key (content-type "test/html"))
  `(hunchentoot:define-easy-handler (,name :uri ,uri) ()
     (setf (hunchentoot:content-type*) ,content-type)
     ,body))

(defun define-page ()
  (dispatch page-oso.css  "/oso/css/oso.css" (css-home)  :content-type "text/css")
  (dispatch page-oso.html "/oso"             (html-home) :content-type "text/html"))


(defun html-home (&key (stream *standard-output*))
  (cl-who:with-html-output (stream)
    (:html (:head (:title "おまえ")
		  (:link :rel "stylesheet" :type "text/css" :href "/oso/css/oso.css"))
	   (:body (:div :id "main-image-section"
			(:image :id  "main-image"
				:alt "俺の仕事はおまえのもの。おまえの仕事はおまえのもの。2"))
		  (:div :id "login-form"
			(:lable "ID")
			(:input :type "text" :class "inputTextPlain" :id "user-id") 
			(:lable "パスワード")
			(:input :type "text" :class "inputTextPlain" :id "passowrd"))))))

(defun css-home ()
    (cl-css:css '((html :background \#ffffff)
		  (.inputTextPlain :border "solid 1px #ccc")

		  (\#main-image-section 
		   :width 555px 
		   :height 333px 
		   :border "solid 1px #fff"
		   :margin-top   111px
		   :margin-left  auto
		   :margin-right auto
		   )
		  (\#main-image
		   :width 555px 
		   :height 333px 
		   )
		  
		  (\#login-form 
		   :width        555px
		   :margin-left  auto
		   :margin-right auto)

		  )))

