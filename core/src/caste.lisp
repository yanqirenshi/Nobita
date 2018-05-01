(in-package :nobit@)

(defgeneric flash-across-ones-mind (graph g*an)
  (:method (graph (g*an g*an))
    (spreads graph
             (find-frendship graph :from g*an)
             (make-instance 'idea))))
