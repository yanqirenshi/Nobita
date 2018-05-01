#|
  This file is a part of nobit@ project.
|#

(defsystem "nobit@-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("nobit@"
               "prove")
  :components ((:module "tests"
                :components
                ((:module "utilities" :components ((:file "db")))
                 (:file "package")
                 (:test-file "nobit@"))))
  :description "Test system for nobit@"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))