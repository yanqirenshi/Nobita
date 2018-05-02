(in-package :nobit@)

(defun heart-core (heart times)
  (declare (ignore heart times))
  (when-let ((context (pop-context)))
    (let ((graph (getf context :graph))
          (friendship (getf context :friendship)))
      (spread graph
              (getf context :idea)
              (getf context :source)
              (get-vertex-at graph
                             (shinra::to-class friendship)
                             :%id (shinra::to-id friendship))))))

(defvar *aon*     (make-heart "aon"     #'heart-core))
(defvar *da*      (make-heart "da"      #'heart-core))
(defvar *tri*     (make-heart "tri"     #'heart-core))
(defvar *ceithir* (make-heart "ceithir" #'heart-core))
(defvar *coig*    (make-heart "coig"    #'heart-core))
(defvar *sia*     (make-heart "sia"     #'heart-core))
(defvar *seachd*  (make-heart "seachd"  #'heart-core))

(defun start ()
  (let ((hearts (list *aon* *da* *tri* *ceithir* *coig* *sia* *seachd*)))
    (dolist (heart hearts)
      (start-heart heart))))
