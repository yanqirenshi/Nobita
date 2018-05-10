(in-package :nobit@)

;;;;;
;;;;; Find
;;;;;
(defun find-frendship-at-to-classes (graph from to-classes)
  (when-let ((to-class (car to-classes)))
    (nconc (find-r-edge graph 'friendship
                        :from from
                        :edge-type :friend
                        :vertex-class to-class)
           (find-frendship-at-to-classes graph from (cdr to-classes)))))

(defun find-frendship-at-from (graph from)
  (find-r-edge graph 'friendship
               :from from
               :edge-type :friend))

(defun find-frendship-at-to (graph to)
  (find-r-edge graph 'friendship
               :to to
               :edge-type :friend))

(defun find-frendship (graph &key from to-classes to)
  (cond ((and from to-classes)
         (find-frendship-at-to-classes graph from (ensure-list to-classes)))
        ((and from (null to-classes))
         (find-frendship-at-from graph from))
        ((and to (null from) (null to-classes))
         (find-frendship-at-to graph to))))

;;;;;
;;;;; Assert
;;;;;
(defun assert-frendship-1-1 (to frendships)
  (assert (not (find-if #'(lambda (frendship)
                            (eq (class-name (class-of to))
                                (class-name (class-of (getf frendship :vertex)))))
                        frendships))))

(defun assert-frendship-1-n (to frendships)
  (assert (not (find-if #'(lambda (frendship)
                            (= (up:%id to)
                               (up:%id frendship)))
                        frendships))))

(defun assert-frendship (graph from to type)
  (let ((frendships (find-frendship graph
                                    :from from
                                    :to-classes (class-symbol to))))
    (when frendships
      (cond ((eq :1-1 type) (assert-frendship-1-1 to frendships))
            ((eq :1-n type) (assert-frendship-1-n to frendships))))))

;;;;;
;;;;; make
;;;;;
(defun %tx-make-frendship (graph from to heart)
  (tx-make-edge graph 'friendship from to :friend
                `((heart ,heart))))

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
