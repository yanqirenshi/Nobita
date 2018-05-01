(in-package :nobit@)

(defmethod spread ((graph shinra:banshou) (idea idea) source (friendship friendship))
  (spread graph idea source
          (get-vertex-at graph
                         (shinra::to-class friendship)
                         :%id (shinra::to-id friendship))))
