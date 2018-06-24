#|
  This file is a part of nobit@.graph project.
|#

(defsystem "nobit@.graph"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on (#:shinrabanshou)
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "graph"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "nobit@.graph-test"))))
