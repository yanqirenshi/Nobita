#|
  This file is a part of cl-oso project.
  Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)
|#

(in-package :cl-user)
(defpackage cl-oso
  (:use :cl :cl-who :cl-css))
(in-package :cl-oso)

(push (hunchentoot:create-folder-dispatcher-and-handler "/oss/image/" "/home/atman/prj/cl-oso/src/image/")
      hunchentoot:*dispatch-table*)

(defmacro dispatch (name uri body &key (content-type "test/html"))
  `(hunchentoot:define-easy-handler (,name :uri ,uri) ()
     (setf (hunchentoot:content-type*) ,content-type)
     ,body))

(defun define-page ()
  (dispatch page-oso.css  "/oso/css/oso.css" (css-home)  :content-type "text/css")
  (dispatch page-oso.html "/oso"             (html-home) :content-type "text/html"))


(defun html-home (&key (stream *standard-output*))
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
                 :margin-top   5px
                 :margin-left  auto
                 :margin-right auto)
                (\#user-id :width 122px :padding 5px)
                (\#password :width 122px :padding 5px)

                )))


;;;
;;; omae
;;;
(defclass omae ()
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

(defmethod start ((omae omae-wait))
  "仕事を開始します。"
  (let ((wait (time-wait omae)))
    (setf (thread omae)
          (sb-thread:make-thread
           (lambda ()
             (status-next omae)
             (write-line (format nil "start wait : ~a[s]" wait))
             (sleep wait)
             (status-next omae))))))

;;;
;;; relation
;;;
(defclass relation ()
  ((id          :accessor id            :initarg :id            :initform nil)
   (from        :accessor from          :initarg :from          :initform nil)
   (to          :accessor to            :initarg :to            :initform nil)
   (name        :accessor name          :initarg :name          :initform nil)
   (status      :accessor status        :initarg :status        :initform nil)
   (contents    :accessor contents      :initarg :contents      :initform nil)))


;;;
;;; poo
;;;
(defclass pool ()
  ((hm :accessor hm :initarg :hm :initform (make-hash-table :test 'equalp))))

(defmethod add-omae ((pool pool) (omae omae))
  (let ((hm (hm pool)))
    (when (not (gethash (id omae) hm))
      (setf (gethash (id omae) hm) omae))))

(defmethod get-omae-at-id ((pool pool) id)
  (when (and pool id)
    (gethash id (hm pool))))

(defmethod remove-omae-at-id ((pool pool) id)
  (when (and pool id)
    (remhash id (hm pool))))



(defvar *pool-omae* (make-instance 'pool))
