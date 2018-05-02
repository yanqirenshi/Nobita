(defpackage nobit@
  (:nicknames :nobi)
  (:use #:cl
        #:nobit@.utilities
        #:nobit@.hearts)
  (:import-from :alexandria
                #:when-let
                #:ensure-list
                #:plist-hash-table
                #:hash-table-values)
  (:import-from :shinra
                #:tx-make-vertex
                #:tx-make-edge
                #:find-r-edge
                #:get-vertex-at)
  (:import-from :nobit@.db
                #:*graph*)
  (:export #:start)
  (:export #:tx-make-g*an
           #:tx-make-4neo
           #:tx-make-nobit@
           #:tx-make-frendship)
  (:export #:flash-across-ones-mind))
(in-package :nobit@)
