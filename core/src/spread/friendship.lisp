(in-package :nobit@)

(defmethod spread ((graph shinra:banshou) (idea list) source (friendship friendship))
  (when-let ((heart (gethash (heart friendship) *hearts*)))
    (push-context heart
                  (make-context :graph graph
                                :idea idea
                                :source source
                                :friendship friendship))))
