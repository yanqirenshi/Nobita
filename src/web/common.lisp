(in-package :nobita)

(defun common.css (request host session)
  (declare (ignore request host session))
  (setf (hunchentoot:content-type*) "text/css")
  (cl-css:css '(
                (("html" "body" "section#background" "section#myholder")
                 :width 100% :height 100% :margin 0px
                 :box-sizing border-box)
                (("section#myholder" "section#background")
                 :position fixed :left 0 :top 0)
                ("section#myholder"   :z-index 0)
                ("section#background" :z-index -999)
                ("section#background > img#main-image" :position fixed :right 0 :bottom 0)
                )))

