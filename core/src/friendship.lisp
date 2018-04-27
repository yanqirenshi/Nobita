(in-package :nobita)

(defgeneric make-frendship (from to)
  (:method ((from g*an) (to 4neo))
    ;; 1:1
    (list from to))
  (:method ((from 4neo) (to nobit@))
    ;; 1:1
    (list from to))
  (:method ((from nobit@) (to nobit@))
    ;; 1:n
    (list from to))
  (:method ((from nobit@) (to 4neo))
    ;; 1:1
    (list from to))
  (:method ((from 4neo) (to g*an))
    ;; 1:1
    (list from to)))
