(in-package :nobit@)

(defun location2json (location)
  (list :|hold| (or (getf location :hold) :null)
        :|x| (getf location :x)
        :|y| (getf location :y)
        :|z| (getf location :z)))
