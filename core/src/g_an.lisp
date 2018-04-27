(in-package :nobita)

(defun tx-make-g*an (graph)
  (shinra:tx-make-vertex graph 'g*an))

(defgeneric flash-across-ones-mind (g*an)
  (:method ((g*an g*an))
    (values (make-instance 'idea) g*an)))
