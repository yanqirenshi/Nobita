# nobita

俺の仕事はおまえのもの。おまえの仕事はおまえのもの。

![俺の仕事はおまえのもの。おまえの仕事はおまえのもの。](https://bytebucket.org/fools-gold/nobita/raw/6978ff87907d29985f48f204ef8eae6b3eedcc98/web/assets/image/gian.png?token=647b7a3496518390c9496855cfdcccf0c91eedbb)

## Usage


### 準備

例： `(1 + 2) / (3 * 4) = 1/4 `

```list
(in-package :nobit@)

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
  idea)

(defparameter *g*an*     (tx-make-g*an   *graph* :name "ジャ○アン"))
(defparameter *4neo-1*   (tx-make-4neo   *graph* :name "ス○夫(始)"))
(defparameter *4neo-2*   (tx-make-4neo   *graph* :name "ス○夫(結)"))
(defparameter *nobit@-1* (tx-make-nobit@ *graph* :name "ど"    :action #'nobi-action-1))
(defparameter *nobit@-2* (tx-make-nobit@ *graph* :name "え"    :action #'nobi-action-2))
(defparameter *nobit@-3* (tx-make-nobit@ *graph* :name "○"    :action #'nobi-action-3))
(defparameter *nobit@-4* (tx-make-nobit@ *graph* :name "も〜ん" :action #'nobi-action-4))

(tx-make-frendship *graph* *g*an*     *4neo-1*   :aon)
(tx-make-frendship *graph* *4neo-1*   *nobit@-1* :aon)
(tx-make-frendship *graph* *nobit@-1* *nobit@-2* :aon)
(tx-make-frendship *graph* *nobit@-1* *nobit@-3* :aon)
(tx-make-frendship *graph* *nobit@-2* *nobit@-4* :aon)
(tx-make-frendship *graph* *nobit@-3* *nobit@-4* :aon)
(tx-make-frendship *graph* *nobit@-4* *4neo-2*   :aon)
(tx-make-frendship *graph* *4neo-2*   *g*an*     :aon)
```

### 処理の実行

```lisp
(flash-across-ones-mind *graph* *g*an*)
```


## Setting

```lisp
(nobit@.graph:start)
(nobit@:start)
```

## Installation

```lisp
(ql:quickload :nobit@.graph)
(ql:quickload :nobit@)
(ql:quickload :nobit@.api)
(ql:quickload :nobit@-test)

(nobit@.graph:start)
```

## Dependencies

- [alexandria](https://gitlab.common-lisp.net/alexandria/alexandria)
- [cl-fad](https://github.com/edicl/cl-fad)
- [local-time](https://github.com/dlowe-net/local-time)
- [queues](#https://github.com/oconnore/queues) / queues.simple-cqueue
- [shinrabanshou](https://github.com/yanqirenshi/shinrabanshou) / [upanishad](https://github.com/yanqirenshi/upanishad)
- [rhythm](https://github.com/yanqirenshi/rhythm)

## Directories

| Name  | Description                   |
|-------|-------------------------------|
| core/ | いわゆる model 的なものです。 |
| api/  | WEB-API です。                |
| web/  | フロントです。                |
| data/ | ...                              |
| docs/ | ...                              |

## Author

+ Satoshi Iwasaki (yanqirenshi@gmail.com)

# Copyright

Copyright (c) 2014 Satoshi Iwasaki (yanqirenshi@gmail.com)

# License

MIT
