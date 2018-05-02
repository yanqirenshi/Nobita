(in-package :nobit@)

(defun %tx-make-frendship (graph from to heart)
  (tx-make-edge graph 'friendship from to :friend
                `((heart ,heart))))

(defun find-frendship-at-to-classes (graph from to-classes)
  (when-let ((to-class (car to-classes)))
    (nconc (find-r-edge graph 'friendship
                        :from from
                        :edge-type :friend
                        :vertex-class to-class)
           (find-frendship-at-to-classes graph from (cdr to-classes)))))

(defun find-frendship (graph &key from to-classes)
  (cond ((and from to-classes)
         (find-frendship-at-to-classes graph from (ensure-list to-classes)))
        ((and from (null to-classes))
         (find-r-edge graph 'friendship
                      :from from
                      :edge-type :friend))))

(defun assert-frendship (graph from to type)
  (let ((results (find-frendship graph :from from :to-classes (class-symbol to))))
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

(defgeneric tx-make-frendship (graph from to heart)
  (:method (graph (from g*an) (to 4neo) heart)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart))

  (:method (graph (from 4neo) (to nobit@) heart)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart))

  (:method (graph (from nobit@) (to nobit@) heart)
    (assert-frendship graph from to :1-n)
    (%tx-make-frendship graph from to heart))

  (:method (graph (from nobit@) (to 4neo) heart)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart))

  (:method (graph (from 4neo) (to g*an) heart)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart)))

;; - momentary
;; - alternate
