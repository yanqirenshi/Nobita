(in-package :nobit@)

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
        (nobit@.karma:rm-karma-at-idea-id (karma-pool heart) _id)))
    (remove-karmas _id source (cdr frendships))))


(defun spread-action (graph _id source nobit@ frendships_before)
  (let ((next_idea (pop-idea-from-frendships _id frendships_before)))
    (remove-karmas _id source frendships_before)
    (action! graph nobit@ next_idea source)))


(defmethod spread ((graph shinra:banshou) (idea list) source (nobit@ nobit@))
  "前フレンズの処理が完了しているかを確認し、全て完了している場合に自身の処理を実行する。
完了しているかどうかはフレンドシップに対象idが存在するかどうかで判断する。"
  (let ((frendships_before (find-frendship graph :to nobit@))
        (_id (getf idea :_id)))
    (when (do-it-now? _id frendships_before)
      (let ((new_idea (spread-action graph _id source nobit@ frendships_before)))
        (spreads graph
                 new_idea
                 nobit@
                 (find-frendship graph
                                 :from nobit@
                                 :to-classes '(4neo nobit@)))))))
