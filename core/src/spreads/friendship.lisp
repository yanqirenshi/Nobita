(in-package :nobit@)

(defun push-idea (friendship idea)
  "friendship に idea を保管する。"
  (setf (gethash (getf idea :_id) (contexts friendship))
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

(defmethod spread ((graph shinra:banshou) (idea list) source (friendship friendship))
  "heart heart に context を作って保管するだけ。
あとは heart の tick で後続に進められる。"
  (when-let ((heart (gethash (heart friendship) *hearts*)))
    (push-idea friendship idea)
    (push-karma (karma-pool heart)
                :idea_id (getf idea :_id)
                :graph graph
                :source source
                :friendship friendship)))
