(in-package :nobit@)


(defclass g*an (node)
  ()
  (:documentation "要求(request)を作成するノードです。
全てはここから初まります。"))


(defmethod jojo:%to-json ((obj g*an))
  (jojo:with-object
    (jojo:write-key-value "_id"      (slot-value obj 'up:%id))
    (jojo:write-key-value "name"     (slot-value obj 'name))
    (jojo:write-key-value "location" (location2json (slot-value obj 'location)))
    (jojo:write-key-value "_class"   "G*AN")))
