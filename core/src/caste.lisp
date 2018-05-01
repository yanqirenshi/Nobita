(in-package :nobit@)

(defgeneric flash-across-ones-mind (graph g*an)
  (:method (graph (g*an g*an))
    (format t  "flash-across-ones-mind~%")
    (spreads graph
             (make-instance 'idea)
             g*an
             (find-frendship graph :from g*an))))
