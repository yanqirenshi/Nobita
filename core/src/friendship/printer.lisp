(in-package :nobit@)

(defmethod print-object ((obj friendship) out)
  (print-unreadable-object (obj out :type t)
    (format out
            "%id:~s, ~s(~s) ⇒ ~s ⇒ ~s(~s)"
            (up:%id obj)
            (shinra::from-id obj)
            (shinra::from-class obj)
            (shinra::edge-type obj)
            (shinra::to-id obj)
            (shinra::to-class obj))))
