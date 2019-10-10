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
               #:bordeaux-threads
               #:cl-syslog
               #:shinrabanshou
               #:rhythm)
  :components ((:module "src"
                :components
                ((:module "libs" :components ((:file "idea")
                                              (:file "karma")
                                              (:file "hearts")))
                 (:module "action" :components ((:file "package")
                                                (:file "action-plan")))
                 (:file "utilities")
                 (:file "package")
                 (:file "class")
                 (:file "idea")
                 (:file "pocket")
                 ;; グラフ
                 (:module "friends" :components ((:file "2json")
                                                 (:file "location")
                                                 (:file "g_an")
                                                 (:file "4neo")
                                                 (:file "nobit@")))
                 (:module "friendship" :components ((:file "finder")
                                                    (:file "maker")
                                                    (:file "printer")
                                                    (:file "json")))
                 ;; Friend ごとの Action
                 (:module "friend-action" :components ((:file "action")
                                                       (:file "nobit@")))
                 ;; 伝播
                 (:module "spread" :components ((:file "spread")
                                                (:file "g_an")
                                                (:file "4neo")
                                                (:file "nobit@")
                                                (:file "friendship")))
                 ;; カースト
                 (:module "hearts" :components ((:file "tick!")
                                                (:file "deamons"))))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "nobit@-test"))))
