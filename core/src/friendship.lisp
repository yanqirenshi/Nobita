(in-package :nobit@)

(defgeneric tx-make-frendship (graph from to)
  (:method (graph (from g*an) (to 4neo))
    ;; 1:1
    (values nil from to))
  (:method (graph (from 4neo) (to nobit@))
    ;; 1:1
    (list nil from to))
  (:method (graph (from nobit@) (to nobit@))
    ;; 1:n
    (list nil from to))
  (:method (graph (from nobit@) (to 4neo))
    ;; 1:1
    (list nil from to))
  (:method (graph (from 4neo) (to g*an))
    ;; 1:1
    (list nil from to)))

;; - momentary
;; - alternate
