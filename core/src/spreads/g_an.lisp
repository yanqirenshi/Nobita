(in-package :nobit@)

(defmethod spread ((graph shinra:banshou) (idea list) source (g*an g*an))
  (format t "G*an   : ~a~%" g*an)
  (format t "~%  => 計算結果 ~S~%" (getf idea :results)))
