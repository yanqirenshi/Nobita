(in-package :nobita)

(defvar *httpsvr* nil)
(defvar *httpsvr-host* "localhost")
(defvar *httpsvr-port* 55565)
(defvar *httpsvr-log-dir* "/var/www/log/nobita/")
(defvar *httpsvr-file-dirs*
  '(("/nobita/image/" "~/prj/nobita/src/image/")
    ("/nobita/js/"    "~/prj/nobita/src/js/")
    ("/lib/"          "/var/www/lib/")))
(defvar *httpsvr-rscs*
  '(("/common.css"           :get common.css)
    ("/nobita.css"           :get nobita.css)
    ("/nobita.html"          :get nobita.html)
    ("/nobita/login.html"    :get html-login)
    ("/nobita/rsc/omae"      :get omae-get)
    ("/nobita/rsc/situation" :get situation-get)))


(defun start-httpsvr (&key
                        (host      *httpsvr-host*)
                        (port      *httpsvr-port*)
                        (logdir    *httpsvr-log-dir*)
                        (file-dirs *httpsvr-file-dirs*)
                        (rscs      *httpsvr-rscs*))
  (setf *httpsvr*
        (yzr::make-rsc-server :address host :port port :log-dir logdir
                              :file-dirs *httpsvr-file-dirs*
                              :file-dirs file-dirs
                              :resources rscs))
  (yzr::start *httpsvr*)
  *httpsvr*)


(defmethod stop-httpsvr ((svr yzr:yaezakura))
  (yzr::stop svr)
  svr)
