(defpackage nobit@
  (:nicknames :nobi)
  (:use #:cl
        #:nobit@.utilities
        #:nobit@.context
        #:nobit@.hearts)
  (:import-from :alexandria
                #:when-let
                #:ensure-list)
  (:import-from :shinra
                #:tx-make-vertex
                #:tx-make-edge
                #:find-r-edge
                #:get-vertex-at)
  (:import-from :nobit@.db
                #:*graph*)
  (:export #:start))
(in-package :nobit@)
