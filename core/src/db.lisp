(in-package :cl-user)
(defpackage nobit@.db
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
(in-package :nobit@.db)

(defvar *graph* nil)

(defvar *graph-stor-dir*
  (merge-pathnames "../data/graph/" (system-source-directory :nobit@)))

(defun start ()
  (when *graph* (stop))
  (setf *graph*
        (make-banshou 'banshou *graph-stor-dir*)))

(defun snapshot ()
  (up:snapshot *graph*))

(defun stop ()
  (when *graph*
    (up:stop *graph*)
    (setf *graph* nil)))

(defun reboot ()
  (stop)
  (mapcar #'delete-file
          (fad:list-directory *graph-stor-dir*))
  (start))
