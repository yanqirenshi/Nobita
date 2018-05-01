(defpackage nobit@-test.db
  (:use #:cl)
  (:export #:*graph*
           #:start
           #:stop
           #:reboot))
(in-package :nobit@-test.db)

(defvar *graph-stor-dir*
  (merge-pathnames "tests/data/graph/" (asdf:system-source-directory :nobit@-test)))

(defvar *graph* nil)

(defun start ()
  (when *graph* (stop))
  (setf *graph*
        (shinra:make-banshou 'shinra:banshou *graph-stor-dir*))
  *graph*)

(defun stop ()
  (when *graph*
    (up:stop *graph*)
    (setf *graph* nil))
  *graph*)

(defun reboot ()
  (stop)
  (mapcar #'delete-file
          (fad:list-directory *graph-stor-dir*))
  (start)
  *graph*)
