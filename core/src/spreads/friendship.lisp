(in-package :nobit@)

(defun push-idea (friendship idea)
  "friendship に idea を保管する。"
  (setf (gethash (idea-id idea) (contexts friendship))
        idea))

(defun exist-idea-p (friendship _id)
  "friendship に idea が存在するかを返す。"
  (not (null (gethash _id (contexts friendship)))))

(defun pop-idea (friendship _id)
  "friendship から idea を取り出す。
取り出したら friendship からは消える。"
  (let ((idea (gethash _id (contexts friendship))))
    (remhash _id (contexts friendship))
    idea))

(defmethod spread ((graph shinra:banshou) (idea nobit@.idea::idea) source (friendship friendship))
  "heart heart に context を作って保管するだけ。
あとは heart の tick で後続に進められる。"
  (format t "SPREAD Friendship: Start ~a~%" friendship)
  (when-let ((heart (heart friendship)))
    (push-idea friendship idea)
    (push-karma (karma-pool heart)
                :idea_id (idea-id idea)
                :graph graph
                :source source
                :friendship friendship))
  (format t "SPREAD Friendship: End ~a~%" friendship))
