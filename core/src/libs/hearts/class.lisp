(in-package :nobit@.hearts)


(defclass nobiheart (rhythm::heart)
  ((code :accessor code
         :initarg :code
         :initform nil)
   (karma-pool :accessor karma-pool
               :initarg :karma-pool
               :initform (make-instance 'karma-pool))))
