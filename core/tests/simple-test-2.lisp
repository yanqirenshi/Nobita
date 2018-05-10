(in-package :nobit@-test)

(defparameter +g*an+ nil)
(defparameter +4neo+ nil)
(defparameter +nobit@01+ nil)
(defparameter +nobit@02+ nil)
(defparameter +nobit@03+ nil)
(defparameter +nobit@04+ nil)

(plan nil)

(reboot)

(defun nobit@-action (&key graph idea source nobit@)
  (declare (ignore graph source nobit@))
    (let ((results (getf idea :results)))
      (setf (getf idea :results)
            (if (numberp results)
                (+ 1 results)
                1)))
    idea)

;;;                          | --> nobit@ --> |
;;; g*an --> 4neo --> nobit@ |                | nobit@ --> 4neo --> g*an
;;;                          | --> nobit@ --> |
(subtest "Normal test: include 1:1"
  (subtest "Make data"
    (subtest "make friends"
      (setf +g*an+     (up:execute-transaction (nobit@:tx-make-g*an   *graph*)))
      (setf +4neo+     (up:execute-transaction (nobit@:tx-make-4neo   *graph*)))
      (setf +nobit@01+ (up:execute-transaction (nobit@:tx-make-nobit@ *graph* :action 'nobit@-action)))
      (setf +nobit@02+ (up:execute-transaction (nobit@:tx-make-nobit@ *graph* :action 'nobit@-action)))
      (setf +nobit@03+ (up:execute-transaction (nobit@:tx-make-nobit@ *graph* :action 'nobit@-action)))
      (setf +nobit@04+ (up:execute-transaction (nobit@:tx-make-nobit@ *graph* :action 'nobit@-action))))

    (subtest "make friendships"
      (let ((heart :aon))
        (up:execute-transaction (nobit@:tx-make-frendship *graph* +g*an+     +4neo+     heart))
        (up:execute-transaction (nobit@:tx-make-frendship *graph* +4neo+     +nobit@01+ heart))
        (up:execute-transaction (nobit@:tx-make-frendship *graph* +nobit@01+ +nobit@02+ heart))
        (up:execute-transaction (nobit@:tx-make-frendship *graph* +nobit@01+ +nobit@03+ heart))
        (up:execute-transaction (nobit@:tx-make-frendship *graph* +nobit@02+ +nobit@04+ heart))
        (up:execute-transaction (nobit@:tx-make-frendship *graph* +nobit@02+ +nobit@04+ heart))
        (up:execute-transaction (nobit@:tx-make-frendship *graph* +nobit@04+ +4neo+     heart))
        (up:execute-transaction (nobit@:tx-make-frendship *graph* +4neo+     +g*an+     heart))))))

(subtest "Start"
  (nobit@:flash-across-ones-mind *graph* +g*an+))

(finalize)
