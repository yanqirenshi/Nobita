(in-package :nobit@)

(defvar *idea-id-counter* 0)

(defun make-idea ()
  (list :_id (incf *idea-id-counter*)
        :contents nil
        :results nil
        :timestamp (list :start (local-time:now)
                         :end nil)))

(defun copy-idea (idea &key contents)
  (list :_id       (getf idea :_id)
        :contents  (or contents (getf idea :_id))
        :results nil ;; はいしよてい。
        :timestamp (getf idea :timestamp)))
