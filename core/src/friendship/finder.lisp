(in-package :nobit@)

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
