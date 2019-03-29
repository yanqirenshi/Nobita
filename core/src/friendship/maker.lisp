(in-package :nobit@)

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
  ;;; g*an - 4new
  (:method (graph (from g*an) (to 4neo) heart)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart))
  ;;; 4neo - nobit@
  (:method (graph (from 4neo) (to nobit@) heart)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart))
  ;;; nobit@ - nobit@
  (:method (graph (from nobit@) (to nobit@) heart)
    (assert-frendship graph from to :1-n)
    (%tx-make-frendship graph from to heart))
  ;;; nobit@ - 4neo
  (:method (graph (from nobit@) (to 4neo) heart)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart))
  ;;; 4neo - g*an
  (:method (graph (from 4neo) (to g*an) heart)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart)))
