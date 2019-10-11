(in-package :nobit@)

(defun get-friend (graph &key %id)
  (or (get-g*an   graph :%id %id)
      (get-4neo   graph :%id %id)
      (get-nobit@ graph :%id %id)))
