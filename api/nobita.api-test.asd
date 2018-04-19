#|
  This file is a part of nobita.api project.
|#

(defsystem "nobita.api-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("nobita.api"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "nobita.api"))))
  :description "Test system for nobita.api"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
