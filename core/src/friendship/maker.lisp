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

(defun assert-empty-frendship (graph from to type)
  (declare (ignore type)) ;; TODO: うーむ。。
  (let ((frendships (find-frendship graph
                                    :from from
                                    :to to)))
    (assert (null frendships))))

;;;;;
;;;;; make
;;;;;
(defun %tx-make-frendship (graph from to heart &key description)
  (let ((edge-type :friend))
    (assert-empty-frendship graph from to edge-type)
    (tx-make-edge graph 'friendship from to edge-type
                  `((heart ,heart)
                    (description , description)))))


(defgeneric tx-make-frendship (graph from to heart &key description)
  ;;; g*an - 4new
  (:method (graph (from g*an) (to 4neo) heart &key description)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart :description description))

  ;;; 4neo - nobit@
  (:method (graph (from 4neo) (to nobit@) heart &key description)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart :description description))

  ;;; nobit@ - nobit@
  (:method (graph (from nobit@) (to nobit@) heart &key description)
    (assert-frendship graph from to :1-n)
    (%tx-make-frendship graph from to heart :description description))

  ;;; nobit@ - 4neo
  (:method (graph (from nobit@) (to 4neo) heart &key description)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart :description description))

  ;;; 4neo - g*an
  (:method (graph (from 4neo) (to g*an) heart &key description)
    (assert-frendship graph from to :1-1)
    (%tx-make-frendship graph from to heart :description description)))
