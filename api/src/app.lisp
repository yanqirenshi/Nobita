(ql:quickload :nobita.api)

(defpackage nobita.api.app
  (:use :cl)
  (:import-from #:lack.builder
                #:builder)
  (:import-from #:ppcre
                #:scan
                #:regex-replace)
  (:import-from #:nobita.api.router
                #:*route*)
  (:import-from #:nobita.api.api-v1
                #:*api-v1*)
  (:import-from #:nobita.api.config
                #:config))
(in-package :nobita.api.app)

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
