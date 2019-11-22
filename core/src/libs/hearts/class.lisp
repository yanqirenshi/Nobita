(in-package :nobit@.hearts)


(defclass nobiheart (rhythm::heart)
  ((code :accessor code
         :initarg :code
         :initform nil)
   (karma-pool :accessor karma-pool
               :initarg :karma-pool
               :initform (make-instance 'karma-pool))))


(defun nobiheart-slots (nobiheart serialization-state)
  (let ((out (s-serialization::get-serializable-slots serialization-state nobiheart)))
    (defparameter *tmp* out)
    ;; TODO: この remove-if は get-serializable-slots で出来るようにすべき。
    (remove-if #'(lambda (d)
                   (or (eq d 'rhythm:beat)
                       (eq d 'rhythm:core)
                       (eq d 'nobit@.hearts:karma-pool)))
               out)))


(defmethod s-serialization:serialize-xml-internal ((object nobiheart) stream serialization-state)
  (let ((id (s-serialization::known-object-id serialization-state object)))
    (if id
        (progn
          (write-string "<REF ID=\"" stream)
          (prin1 id stream)
          (write-string "\"/>" stream))
        (progn
          (setf id (s-serialization::set-known-object serialization-state object))
          (write-string "<OBJECT ID=\"" stream)
          (prin1 id stream)
          (write-string "\" CLASS=\"" stream)
          (s-serialization::print-symbol-xml (class-name (class-of object)) stream)
          (princ "\">" stream)
          (loop :for slot :in (nobiheart-slots object serialization-state)
                :do (when (slot-boundp object slot)
                      (format t "slot=~S~%" slot)
                      (write-string "<SLOT NAME=\"" stream)
                      (s-serialization::print-symbol-xml slot stream)
                      (write-string "\">" stream)
                      (s-serialization::serialize-xml-internal (slot-value object slot) stream serialization-state)
                      (write-string "</SLOT>" stream)))
          (write-string "</OBJECT>" stream)))))
