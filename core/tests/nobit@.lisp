(in-package :nobit@-test)

(defparameter +g*an+ nil)
(defparameter +4neo+ nil)
(defparameter +nobit@01+ nil)
(defparameter +nobit@02+ nil)
(defparameter +nobit@03+ nil)

(plan nil)

(reboot)

(subtest "Make data"

  (setf +g*an+     (up:execute-transaction (nobit@:tx-make-g*an   *graph*)))
  (setf +4neo+     (up:execute-transaction (nobit@:tx-make-4neo   *graph*)))
  (setf +nobit@01+ (up:execute-transaction (nobit@:tx-make-nobit@ *graph*)))
  (setf +nobit@02+ (up:execute-transaction (nobit@:tx-make-nobit@ *graph*)))
  (setf +nobit@03+ (up:execute-transaction (nobit@:tx-make-nobit@ *graph*)))

  (let ((heart :aon))
    (up:execute-transaction (nobit@:tx-make-frendship *graph* +g*an+     +4neo+     heart))
    (up:execute-transaction (nobit@:tx-make-frendship *graph* +4neo+     +nobit@01+ heart))
    (up:execute-transaction (nobit@:tx-make-frendship *graph* +nobit@01+ +nobit@02+ heart))
    (up:execute-transaction (nobit@:tx-make-frendship *graph* +nobit@02+ +nobit@03+ heart))
    (up:execute-transaction (nobit@:tx-make-frendship *graph* +nobit@03+ +4neo+     heart))
    (up:execute-transaction (nobit@:tx-make-frendship *graph* +4neo+     +g*an+     heart)))

  (subtest "Simple Test"
    (nobit@:flash-across-ones-mind *graph* +g*an+)))

(finalize)
