(in-package :nobit@)


(defclass 4neo (node)
  ()
  (:documentation ""))


(defmethod jojo:%to-json ((obj 4neo))
  (jojo:with-object
    (jojo:write-key-value "_id"      (slot-value obj 'up:%id))
    (jojo:write-key-value "name"     (slot-value obj 'name))
    (jojo:write-key-value "location" (location2json (slot-value obj 'location)))
    (jojo:write-key-value "_class"   "4NEO")))
