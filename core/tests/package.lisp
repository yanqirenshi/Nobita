(defpackage nobit@-test
  (:use #:cl
        #:nobit@
        #:prove)
  (:import-from :nobit@-test.db
                #:*graph*
                #:reboot))
(in-package :nobit@-test)
