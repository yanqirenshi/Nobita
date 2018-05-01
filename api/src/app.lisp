(ql:quickload :nobit@.api)

(defpackage nobit@.api.app
  (:use :cl)
  (:import-from #:lack.builder
                #:builder)
  (:import-from #:ppcre
                #:scan
                #:regex-replace)
  (:import-from #:nobit@.api.router
                #:*route*)
  (:import-from #:nobit@.api.api-v1
                #:*api-v1*)
  (:import-from #:nobit@.api.config
                #:config))
(in-package :nobit@.api.app)

(builder
 :accesslog
 (if (config :log :error :directory)
     `(:backtrace
       :output ,(config :log :error :directory))
     nil)
 :session
 :validation
 (:mount "/api/v1" *api-v1*)
 *route*)
