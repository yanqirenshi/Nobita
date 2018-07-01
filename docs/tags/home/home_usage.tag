<home_usage>
    <section-container title="Usage">
        <section-contents>
            <p>
                <pre>
(in-package :nobit@)

(nobita.graph:start)

(defparameter *g*an* (tx-make-g*an *graph*))
(defparameter *4neo-1* (tx-make-4neo *graph*))
(defparameter *4neo-2* (tx-make-4neo *graph*))
(defparameter *nobit@-1* (tx-make-nobit@ *graph*))
(defparameter *nobit@-2* (tx-make-nobit@ *graph*))
(defparameter *nobit@-3* (tx-make-nobit@ *graph*))
(defparameter *nobit@-4* (tx-make-nobit@ *graph*))

(defparameter *heart* (get-heart :code :aon))

(tx-make-frendship *graph* *g*an* *4neo-1* *heart*)
(tx-make-frendship *graph* *4neo-1* *nobit@-1* *heart*)
(tx-make-frendship *graph* *nobit@-1* *nobit@-2* *heart*)
(tx-make-frendship *graph* *nobit@-1* *nobit@-3* *heart*)
(tx-make-frendship *graph* *nobit@-2* *nobit@-4* *heart*)
(tx-make-frendship *graph* *nobit@-3* *nobit@-4* *heart*)
(tx-make-frendship *graph* *nobit@-4* *4neo-2* *heart*)
(tx-make-frendship *graph* *4neo-2* *g*an* *heart*)
                </pre>
            </p>
        </section-contents>
    </section-container>
</home_usage>
