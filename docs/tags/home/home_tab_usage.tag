<home_tab_usage>

    <section class="section">
        <div class="container">
            <h1 class="title is-4">例： <code>(1 + 2) / (3 * 4) = 1/4</code> をやってみます。</h1>
            <h2 class="subtitle"></h2>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">(0) 準備</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        <p><pre>(in-package :nobit@)</pre></p>
                    </div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">(1) Nobit@ の Action を定義</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        <p><pre>
(defun nobi-action-1 (&key graph idea source nobit@)
  (declare (ignore graph source nobit@))
  (setf (getf idea :contents)
        (list :nobit@1 (list 1 3)
              :nobit@2 nil
              :nobit@3 nil))
  idea)

(defun nobi-action-2 (&key graph idea source nobit@)
  (declare (ignore graph source nobit@))
  (let ((contents (getf idea :contents)))
    (setf (getf contents :nobit@2)
          (+ 2 (first (getf contents :nobit@1)))))
  idea)

(defun nobi-action-3 (&key graph idea source nobit@)
  (declare (ignore graph source nobit@))
  (let ((contents (getf idea :contents)))
    (setf (getf contents :nobit@3)
          (* 4 (second (getf contents :nobit@1)))))
  idea)

(defun nobi-action-4 (&key graph idea source nobit@)
  (declare (ignore graph source nobit@))
  (let ((contents (getf idea :contents)))
    (setf (getf idea :results)
          (/ (getf contents :nobit@2)
             (getf contents :nobit@3))))
  idea)</pre></p>
                    </div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">(2) 友達を定義する</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        <p><pre>
(defparameter *g*an*     (tx-make-g*an   *graph* :name "ジャ○アン"))
(defparameter *4neo-1*   (tx-make-4neo   *graph* :name "ス○夫(始)"))
(defparameter *4neo-2*   (tx-make-4neo   *graph* :name "ス○夫(結)"))
(defparameter *nobit@-1* (tx-make-nobit@ *graph* :name "ど"    :action #'nobi-action-1))
(defparameter *nobit@-2* (tx-make-nobit@ *graph* :name "え"    :action #'nobi-action-2))
(defparameter *nobit@-3* (tx-make-nobit@ *graph* :name "○"    :action #'nobi-action-3))
(defparameter *nobit@-4* (tx-make-nobit@ *graph* :name "も〜ん" :action #'nobi-action-4))</pre></p>
                    </div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">(3) 友情を定義する</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        <p><pre>
(tx-make-frendship *graph* *g*an*     *4neo-1*   :aon)
(tx-make-frendship *graph* *4neo-1*   *nobit@-1* :aon)
(tx-make-frendship *graph* *nobit@-1* *nobit@-2* :aon)
(tx-make-frendship *graph* *nobit@-1* *nobit@-3* :aon)
(tx-make-frendship *graph* *nobit@-2* *nobit@-4* :aon)
(tx-make-frendship *graph* *nobit@-3* *nobit@-4* :aon)
(tx-make-frendship *graph* *nobit@-4* *4neo-2*   :aon)
(tx-make-frendship *graph* *4neo-2*   *g*an*     :aon)</pre></p>
                    </div>
                </div>
            </section>

            <section class="section">
                <div class="container">
                    <h1 class="title is-4">(4) 処理の実行</h1>
                    <h2 class="subtitle"></h2>

                    <div class="contents">
                        <p><pre>
;; G*an が急に思いつく
(flash-across-ones-mind *graph* *g*an*)</pre></p>
                    </div>
                </div>
            </section>
        </div>
    </section>

</home_tab_usage>
