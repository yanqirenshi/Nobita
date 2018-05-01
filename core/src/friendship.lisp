(in-package :nobit@)

(defun %tx-make-frendship (graph from to)
  (tx-make-edge graph 'friendship from to :friend))

(defun find-frendship (graph &key from)
  (find-r graph 'friendship
          :from from
          :edge-type :friend))

(defun assert-frendship (graph from to type)
  (let ((results (find-frendship graph :from from)))
    (when results
      (cond ((eq :1-1 type)
             (assert (not (find-if #'(lambda (result)
                                       (eq (class-name (class-of to))
                                           (class-name (class-of (getf result :vertex)))))
                                   results))))
            ((eq :1-n type)
             (assert (find-if #'(lambda (result)
                                  (= (up:%id to)
                                     (up:%id (getf result :vertex))))
                              results)))))))

(defgeneric tx-make-frendship (graph from to)
  (:method (graph (from g*an) (to 4neo))
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to))

  (:method (graph (from 4neo) (to nobit@))
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to))

  (:method (graph (from nobit@) (to nobit@))
    (assert-frendship graph from to :1-n)
    (%tx-make-frendship graph from to))

  (:method (graph (from nobit@) (to 4neo))
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to))

  (:method (graph (from 4neo) (to g*an))
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to)))

;; - momentary
;; - alternate

(defgeneric spread (graph idea friendship)
  (:method (graph idea friendship)
    (list graph idea friendship)))

(defgeneric spreads (graph idea friendships)
  (:method (graph idea (friendships list))
    (when-let (friendship (car friendships))
      (spread graph idea friendship)
      (spreads graph idea (cdr friendships)))))
