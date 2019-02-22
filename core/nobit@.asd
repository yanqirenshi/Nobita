#|
This file is a part of nobit@ project.
|#

(defsystem "nobit@"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on (#:alexandria
               #:cl-fad
               #:local-time
               #:queues
               #:queues.priority-cqueue
               #:jonathan
               #:cl-syslog
               #:shinrabanshou
               #:rhythm)
  :components ((:module "src"
                :components
                ((:module "libs" :components ((:file "idea")
                                              (:file "karma")
                                              (:file "hearts")))
                 (:file "utilities")
                 (:file "package")
                 (:file "class")
                 (:file "idea")
                 ;; グラフ
                 (:module "friends" :components ((:file "g_an")
                                                 (:file "4neo")
                                                 (:file "nobit@")))
                 (:module "friendship" :components ((:file "finder")
                                                    (:file "maker")
                                                    (:file "printer")
                                                    (:file "json")))
                 ;; 伝播
                 (:module "spread" :components ((:file "spread")
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
