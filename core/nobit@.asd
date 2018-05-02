#|
This file is a part of nobit@ project.
|#

(defsystem "nobit@"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on (#:alexandria
               #:cl-fad
               #:queues
               #:queues.simple-cqueue
               #:shinrabanshou
               #:rhythm)
  :components ((:module "src"
                :components
                ((:module "libs" :components ((:file "db")
                                              (:file "contexts")))
                 (:file "utilities")
                 (:file "package")
                 (:file "class")
                 ;; グラフ
                 (:module "friends" :components ((:file "g_an")
                                                 (:file "4neo")
                                                 (:file "nobit@")))
                 (:file "friendship")
                 ;; 伝播
                 (:module "spread" :components ((:file "idea") ;; 伝播するもの
                                                (:file "spread")
                                                (:file "g_an")
                                                (:file "4neo")
                                                (:file "nobit@")
                                                (:file "friendship")))
                 ;; カースト
                 (:file "hearts"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "nobit@-test"))))
