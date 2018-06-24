(in-package :cl-user)
(defpackage nobit@.graph
  (:use #:cl)
  (:import-from :asdf
                #:system-source-directory)
  (:import-from :fad
                #:list-directory)
  (:import-from :shinra
                #:banshou
                #:make-banshou)
  (:export #:*graph*
           #:start
           #:stop
           #:reboot))
(in-package :nobit@.graph)
