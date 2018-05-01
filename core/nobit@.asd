#|
This file is a part of nobit@ project.
|#

(defsystem "nobit@"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on (#:alexandria
               #:cl-fad
               #:shinrabanshou)
  :components ((:module "src"
                :components
                ((:file "db")
                 (:file "utilities")
                 (:file "package")
                 (:file "class")
                 ;; グラフ
                 (:file "g_an")
                 (:file "4neo")
                 (:file "nobit@")
                 (:file "friendship")
                 ;; 伝播
                 (:module "spread" :components ((:file "idea") ;; 伝播するもの
                                                (:file "spread")
                                                (:file "g_an")
                                                (:file "4neo")
                                                (:file "nobit@")
                                                (:file "friendship")))
                 ;; カースト
                 (:file "caste"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "nobit@-test"))))
