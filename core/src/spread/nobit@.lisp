(in-package :nobit@)

(defun action! (graph idea source nobit@)
  (let ((action (action nobit@)))
    (if (null action)
        idea
        (funcall action
                 :graph graph
                 :idea idea
                 :source source
                 :nobit@ nobit@))))

(defun do-it-now? (_id frendships)
  (if (null frendships)
      t
      (let ((frendship (car frendships)))
        (if (null (exist-idea-p frendship _id))
            nil
            (do-it-now? _id (cdr frendships))))))

(defun pop-idea-from-frendships (_id frendships)
  (when-let ((frendship (car frendships)))
    ;; TODO: idea (plist) をマージする
    (gethash _id (contexts frendship))))

(defmethod spread ((graph shinra:banshou) (idea list) source (nobit@ nobit@))
  (format t "nobit@=~a~%" nobit@)
  (let ((frendships (find-frendship graph :to nobit@))
        (_id (getf idea :_id)))
    (when (do-it-now? _id frendships)
      (let ((next_idea (pop-idea-from-frendships _id frendships)))
        (spreads graph
                 (action! graph next_idea source nobit@)
                 nobit@
                 (find-frendship graph
                                 :from nobit@
                                 :to-classes '(4neo nobit@)))))))
