(in-package :nobit@)

(defun push-idea (friendship idea)
  (setf (gethash (getf idea :_id) (contexts friendship))
        idea))

(defun exist-idea-p (friendship _id)
  (not (null (gethash _id (contexts friendship)))))

(defun pop-idea (friendship _id)
  (let ((idea (gethash _id (contexts friendship))))
    (remhash _id (contexts friendship))
    idea))

(defmethod spread ((graph shinra:banshou) (idea list) source (friendship friendship))
  "heart heart に context を作って保管するだけ。
あとは heart の tick で後続に進められる。
TODO: これ context に idea 持っているけど friendship に持たせたほうが良い気がする。"
  (when-let ((heart (gethash (heart friendship) *hearts*)))
    (push-idea friendship idea)
    (push-context heart
                  (make-context :graph graph
                                :idea idea
                                :source source
                                :friendship friendship))))
