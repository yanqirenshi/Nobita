#|
  This file is a part of nobit@.graph project.
|#

(defsystem "nobit@.graph-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("nobit@.graph"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "nobit@.graph"))))
  :description "Test system for nobit@.graph"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
