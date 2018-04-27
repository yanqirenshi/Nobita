(in-package :nobita)

(defgeneric flash-across-ones-mind (g*an)
  (:method ((g*an g*an))
    (values (make-instance 'idea) g*an)))
