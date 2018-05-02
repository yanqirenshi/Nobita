(in-package :nobit@)

#|

 伝播: spread
       ※参照: https://ejje.weblio.jp/content/%E4%BC%9D%E6%92%AD

|#

(defgeneric spread (graph idea source target)
  (:documentation ""))

(defgeneric spreads (graph idea source targets)
  (:method ((graph shinra:banshou) (idea list) source (targets list))
    (when-let ((target (car targets)))
      (spread graph idea source target)
      (spreads graph idea source (cdr targets)))))
