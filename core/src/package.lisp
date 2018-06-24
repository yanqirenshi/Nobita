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
                #:find-vertex
                #:find-r-edge
                #:get-vertex-at)
  (:import-from :nobit@.graph
                #:*graph*)
  (:export #:start)
  (:export #:tx-make-nobit@
           #:tx-make-frendship)
  (:export #:find-g*an
           #:tx-make-g*an)
  (:export #:find-4neo
           #:tx-make-4neo)
  (:export #:find-nobit@
           #:tx-make-nobit@)
  (:export #:find-frendship
           #:tx-make-frendship)
  (:export #:flash-across-ones-mind))
(in-package :nobit@)
