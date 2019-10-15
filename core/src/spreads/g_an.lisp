(in-package :nobit@)

(defmethod spread ((graph shinra:banshou) (idea nobit@.idea::idea) source (g*an g*an))
  (format t "SPREAD G*an: Start ~a~%" g*an)
  (format t "   G*an   : ~a~%" g*an)
  (format t "   ~%  => 計算結果 ~S~%" (idea-results idea))
  (format t "SPREAD G*an: End ~a~%" g*an))
