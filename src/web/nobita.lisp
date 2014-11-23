(in-package :nobita)

(defun nobita.html (request host session)
  (declare (ignore request host session))
  ;; Page の描画
  (yzr:gen-html
      "の○太"
      ((:link :rel "stylesheet" :type "text/css" :href "/lib/joint/dist/joint.css")
       (:link :rel "stylesheet" :type "text/css" :href "/nobita.css"))
      ((:script :src "http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js")
       (:script :src "http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js")
       (:script :src "/lib/joint/dist/joint.js")
       (:script :src "/nobita/js/nobita.js"))
    (:section :id "myholder")))





(defun nobita.css (request host session)
  (declare (ignore request host session))
  (cl-css:css '((* :padding 0px :margin 0px :font-size medium)
                (html :background \#ffffff)
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
                (\#graph-section :overflow auto)
                )))



;; ;;;
;; ;;; http server
;; ;;;
;; ;; omae := {:omae-id xxx :name xxx :note xxx :location [x, y, z] :status xxx :thread xxx :timestamp [...] }
;; ;; situation := [air...]
;; ;; air := {:omae-id-from xxxx :omae-id-to xxx :port xxx :status xxxx :contents :timestamp [...] }
;; (defun omae-get ()
;;   (setf (hunchentoot:header-out "Access-Control-Allow-Origin") "*")
;;   (json:encode-json-to-string (alexandria:hash-table-values (hm *pool-omae*))))

;; (defun situation-get ()
;;   (setf (hunchentoot:header-out "Access-Control-Allow-Origin") "*")
;;   (json:encode-json-to-string (alexandria:hash-table-values (hm *pool-situation*))))




;; (defun html-login (&key (stream *standard-output*))
;;   (cl-who:with-html-output (stream)
;;     (:html (:head (:title "俺とおまえ")
;;                   (:link :rel "stylesheet" :type "text/css" :href "/oso/css/oso.css"))
;;            (:body (:div :id "main-image-section"
;;                         (:image :id  "main-image"
;;                                 :src "/oss/image/gian.png"
;;                                 :alt "俺の仕事はおまえのもの。おまえの仕事はおまえのもの。2"))
;;                   (:div :id "login-form"
;;                         (:lable "ID")
;;                         (:input :type "text" :class "inputTextPlain" :id "user-id")
;;                         (:lable "パスワード")
;;                         (:input :type "text" :class "inputTextPlain" :id "password"))))))


;; ;;


;; (defvar *http-server* nil)

;; (defun nobita-start ()
;;   (define-page)
;;   (setf *http-server* (hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4242))))
