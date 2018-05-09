(in-package :nobit@-test)

(plan 4)

(reboot)

(subtest "Function: make-karma-pool"
  (let ((karma-pool (nobit@.karma:make-karma-pool)))
    (ok karma-pool "成功")
    (ok (eq 'queues:priority-cqueue (class-name (class-of karma-pool)))
        "Class が priority-cqueue であること")
    (is 0 (queues:qsize karma-pool)
        "キューが空であること")))

(subtest "Class: karma-pool"
  (let ((pool (make-instance 'nobit@.karma:karma-pool)))
    (ok pool)
    (is 0 (nobi.karma::counter pool))
    (let ((queue (nobi.karma::queue pool)))
      (ok queue "Slot: queue に値がセットされていること")
      (is 'queues:priority-cqueue (class-name (class-of queue))
          "Class が priority-cqueue であること"))))

(subtest "Function: push-karma & pop-karma"
  (let ((pool (make-instance 'nobit@.karma:karma-pool))
        (q1 '(:idea_id -1 :graph "a" :source "b" :friendship "c"))
        (q2 '(:idea_id -2 :graph "d" :source "e" :friendship "f"))
        (q3 '(:idea_id -3 :graph "x" :source "y" :friendship "z")))

    (subtest "Function: push-karma"
      (flet ((push-queue (pool q)
               (nobit@.karma:push-karma pool
                                        :idea_id (getf q :idea_id)
                                        :graph (getf q :graph)
                                        :source (getf q :source)
                                        :friendship (getf q :friendship))))
        (is 0 (nobit@.karma:qsize pool) "キューが空であること")
        (push-queue pool q1)
        (is 1 (nobit@.karma:qsize pool) "キューのサイズが 1 であること")
        (push-queue pool q2)
        (is 2 (nobit@.karma:qsize pool) "キューのサイズが 2 であること")
        (push-queue pool q3)
        (is 3 (nobit@.karma:qsize pool) "キューのサイズが 3 であること")))

    (subtest "Function: pop-karma"
      (flet ((eq-pop-karma (pool q-expected)
               (let ((q-got (nobit@.karma:pop-karma pool)))
                 (is (getf q-got :idea_id) (getf q-expected :idea_id)) "FILO成功")))
        (eq-pop-karma pool q1)
        (is 2 (nobit@.karma:qsize pool) "キューのサイズが 2 であること")
        (eq-pop-karma pool q2)
        (is 1 (nobit@.karma:qsize pool) "キューのサイズが 1 であること")
        (eq-pop-karma pool q3)
        (is 0 (nobit@.karma:qsize pool) "キューのサイズが 0 であること")))))

(subtest "Find & Remove"

  (let ((pool (make-instance 'nobit@.karma:karma-pool))
        (_id -1)
        (graph "a"))
    (subtest "Function: find-karmas"
      (flet ((push-queue (pool q)
               (nobit@.karma:push-karma pool
                                        :idea_id (getf q :idea_id)
                                        :graph (getf q :graph)
                                        :source (getf q :source)
                                        :friendship (getf q :friendship))))
        (push-queue pool `(:idea_id ,_id :graph ,graph :source "b" :friendship "c"))
        (push-queue pool `(:idea_id -2   :graph "d"    :source "e" :friendship "f"))
        (push-queue pool `(:idea_id ,_id :graph "x"    :source "y" :friendship "z"))
        (is 3 (nobit@.karma:qsize pool) "キューのサイズが 3 であること")

        (let ((result (nobit@.karma::find-karmas pool -1)))
          (is 'queues::node (class-name (class-of result)) "is Node class instance")
          (is graph (getf (queues::node-value result) :graph)
              :test 'string=
              "Can return first node"))))

    (subtest "Function: rm-karma-at-idea-id"
      (nobit@.karma:rm-karma-at-idea-id pool _id)
      (is 1 (nobit@.karma:qsize pool) "キューのサイズが 1 であること")
      (is nil (nobit@.karma::find-karmas pool -1) "削除した id の karma が存在しないこと。")
      (isnt nil (nobit@.karma::find-karmas pool -2) "削除していない id の karma が存在すること。"))))

(finalize)
