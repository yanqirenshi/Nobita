(in-package :nobit@)

(defgeneric tx-save-location (graph node &key x y z hold)
  (:method (graph (node node) &key x y z hold)
    (let ((old_location (location node))
          (new_location (make-node-location))
          (class-symbol (class-name (class-of node))))
      (setf (getf new_location :x)    (or x (getf old_location :x)))
      (setf (getf new_location :y)    (or y (getf old_location :y)))
      (setf (getf new_location :z)    (or z (getf old_location :z)))
      (setf (getf new_location :hold) hold)
      (up:tx-change-object-slots graph
                                 class-symbol
                                 (up:%id node)
                                 `((location ,new_location))))))
