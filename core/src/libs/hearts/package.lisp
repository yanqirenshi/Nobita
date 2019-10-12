(defpackage nobit@.hearts
  (:nicknames :nobi.hearts)
  (:use #:cl
        #:nobit@.karma)
  (:import-from :queues
                #:make-queue
                #:qpush
                #:qpop)
  (:import-from :shinra
                #:get-vertex-at)
  (:export #:make-heart
           #:start-heart
           #:stop-heart
           ;; karma
           #:push-karma
           #:pop-karma
           #:karma-pool))
(in-package :nobit@.hearts)
