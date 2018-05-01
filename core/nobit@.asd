#|
This file is a part of nobit@ project.
|#

(defsystem "nobit@"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "db")
                 (:file "package")
                 (:file "class")
                 (:file "idea")
                 (:file "g_an")
                 (:file "4neo")
                 (:file "nobit@"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "nobit@-test"))))
