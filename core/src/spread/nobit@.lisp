(in-package :nobit@)

(defun action! (graph idea source nobit@)
  (let ((action (action nobit@)))
    (if (null action)
        idea
        (funcall action
                 :graph graph
                 :idea idea
                 :source source
                 :nobit@ nobit@))))

(defun do-it-now? (_id frendships)
  (if (null frendships)
      t
      (let ((frendship (car frendships)))
        (if (null (exist-idea-p frendship _id))
            nil
            (do-it-now? _id (cdr frendships))))))

(defun pop-idea-from-frendships (_id frendships)
  (when-let ((frendship (car frendships)))
    ;; TODO: idea (plist) をマージする
    ;;   (1) eq で同一オブジェクトの場合は何もしない。
    ;;   (2) 同一オブジェクトでないとき、後勝ちで新plistを作成する。
    (gethash _id (contexts frendship))))

(defun eq-frendshp-from (frendship node)
  (= (up:%id node)
     (shinra::from-id frendship)))

(defun remove-karmas (_id source frendships)
  (when-let ((frendship (car frendships)))
    (unless (eq-frendshp-from frendship source)
      (let ((heart (get-heart :code (heart frendship))))
        (nobit@.karma:rm-karma-at-idea-id _id (karma-pool heart))))
    (remove-karmas _id source (cdr frendships))))

(defmethod spread ((graph shinra:banshou) (idea list) source (nobit@ nobit@))
  "前フレンズの処理が完了しているかを確認し、全て完了している場合に自身の処理を実行する。
完了しているかどうかはフレンドシップに対象idが存在するかどうかで判断する。"
  (format t "spread@nobit@=~a~%" nobit@)
  (let ((frendships_before (find-frendship graph :to nobit@))
        (_id (getf idea :_id)))
    (when (do-it-now? _id frendships_before)
      (let ((next_idea (pop-idea-from-frendships _id frendships_before)))
        (remove-karmas _id source frendships_before)
        (spreads graph
                 (action! graph next_idea source nobit@)
                 nobit@
                 (find-frendship graph
                                 :from nobit@
                                 :to-classes '(4neo nobit@)))))))
