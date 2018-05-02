(in-package :nobit@)

(defmethod spread ((graph shinra:banshou) (idea idea) source (friendship friendship))
  (push-context (make-context :graph graph
                              :idea idea
                              :source source
                              :friendship friendship)))
