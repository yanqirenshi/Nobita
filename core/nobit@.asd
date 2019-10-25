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
                ((:module "libs"
                  :components ((:file "utilities")
                               (:file "logging")
                               (:file "idea")
                               (:file "karma")
                               (:module "hearts"
                                :components ((:file "package")
                                             (:file "class")
                                             (:file "operators")))
                               (:module "action"
                                :components ((:file "package")
                                             (:file "action-plan")))
                               (:module "pocket"
                                :components ((:file "package")
                                             (:file "pocket")))))
                 (:module "dora@mon" :components ((:file "package")
                                                  (:file "future-tool")
                                                  (:file "dora@mon")
                                                  (:file "four-dimensional-pocket")))
                 (:file "package")
                 (:module "classes" :components ((:file "common")
                                                 (:file "g_an")
                                                 (:file "4neo")
                                                 (:file "nobit@")
                                                 (:file "friendship")))
                 (:module "friends" :components ((:file "location")
                                                 (:file "g_an")
                                                 (:file "4neo")
                                                 (:file "nobit@")
                                                 (:file "friend")))
                 (:module "friendship" :components ((:file "finder")
                                                    (:file "maker")
                                                    (:file "printer")))
                 (:module "solve-problem" :components ((:file "action")
                                                       (:file "nobit@")))
                 (:module "spreads" :components ((:file "spread")
                                                 (:file "g_an")
                                                 (:file "4neo")
                                                 (:file "nobit@")
                                                 (:file "friendship")))
                 (:module "hearts" :components ((:file "tick!")
                                                (:file "heart"))))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "nobit@-test"))))
