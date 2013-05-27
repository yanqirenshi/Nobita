(in-package :cl-oso)

;;;
;;; http server
;;;
(push (hunchentoot:create-folder-dispatcher-and-handler "/oss/image/" "/home/atman/prj/cl-oso/src/image/")
      hunchentoot:*dispatch-table*)
(push (hunchentoot:create-folder-dispatcher-and-handler "/lib/" "/var/www/lib/")
      hunchentoot:*dispatch-table*)

(defmacro dispatch (name uri body &key (content-type "test/html"))
  `(hunchentoot:define-easy-handler (,name :uri ,uri) ()
     (setf (hunchentoot:content-type*) ,content-type)
     ,body))

(defun define-page ()
  (dispatch page-oso.css        "/oso/css/oso.css" (css-home)   :content-type "text/css")
  (dispatch page-oso.html       "/oso"             (html-main)  :content-type "text/html")
  (dispatch page-oso-login.html "/oso/login"       (html-login) :content-type "text/html"))


(defun html-main (&key (stream *standard-output*))
  (cl-who:with-html-output (stream)
    (:html (:head (:title "俺とおまえ")
                  (:link :rel "stylesheet" :type "text/css" :href "/oso/css/oso.css")
                  (:script :srt "/lib/springy/springy.js")
                  (:script :srt "/lib/springy/springyui.js"))
           (:body (:section :id "graph-section")))))


(defun html-login (&key (stream *standard-output*))
  (cl-who:with-html-output (stream)
    (:html (:head (:title "俺とおまえ")
                  (:link :rel "stylesheet" :type "text/css" :href "/oso/css/oso.css"))
           (:body (:div :id "main-image-section"
                        (:image :id  "main-image"
                                :src "/oss/image/gian.png"
                                :alt "俺の仕事はおまえのもの。おまえの仕事はおまえのもの。2"))
                  (:div :id "login-form"
                        (:lable "ID")
                        (:input :type "text" :class "inputTextPlain" :id "user-id")
                        (:lable "パスワード")
                        (:input :type "text" :class "inputTextPlain" :id "password"))))))


;;
(defun css-home ()
  (cl-css:css '((html :background \#ffffff)
                (.inputTextPlain :border "solid 1px #ccc")
                ;;
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
                ;;
                (\#login-form
                 :width        555px
                 :margin-top   5px
                 :margin-left  auto
                 :margin-right auto)
                (\#user-id :width 122px :padding 5px)
                (\#password :width 122px :padding 5px)
                ;;;
                ;;;
                ;;;
                (\#graph-section
                 :width  888px
                 :height 388px
                 :background \#ddd
                 :margin auto
                 )
                )))


(defvar *http-server* nil)

(defun oso-start ()
  (define-page)
  (setf *http-server* (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))))