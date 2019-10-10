(in-package :nobit@)

(defmethod jojo:%to-json ((obj action-plan))
  (jojo:with-object
    (jojo:write-key-value "_id"         (slot-value obj 'up:%id))
    (jojo:write-key-value "name"        (slot-value obj 'name))
    (jojo:write-key-value "description" (or (slot-value obj 'description) ""))
    (jojo:write-key-value "_class"      "ACTION-PLAN")))
