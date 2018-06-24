(in-package :cl-user)
(defpackage nobit@.api.controller
  (:use :cl)
  (:import-from #:nobit@.api.config
                #:config)
  (:export #:nodes
           #:edges))
(in-package :nobit@.api.controller)
