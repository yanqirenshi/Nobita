(in-package :nobit@.graph)

(defvar *graph* nil)

(defvar *graph-stor-dir*
  (merge-pathnames "data/" (system-source-directory :nobit@.graph)))

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
