# nobita

俺の仕事はおまえのもの。おまえの仕事はおまえのもの。

![俺の仕事はおまえのもの。おまえの仕事はおまえのもの。](https://bytebucket.org/fools-gold/nobita/raw/6978ff87907d29985f48f204ef8eae6b3eedcc98/web/assets/image/gian.png?token=647b7a3496518390c9496855cfdcccf0c91eedbb)

## Usage

```lisp
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
```

## Installation

```lisp
(ql:quickload :nobita)
(ql:quickload :nobita.api)
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
