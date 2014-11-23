(in-package :nobita)


;;; ここは upanishad にしたらええね。
(defclass brahman () ())
(defclass atman (brahman) ((id :accessor id :initarg id :initform nil)))


(defclass pool ()
  ((hm :accessor hm :initarg :hm :initform (make-hash-table :test 'equalp))
   (id-counter :accessor id-counter :initarg :id-counter :initform 0)))

(defclass omae (atman)
  ((id          :accessor  id           :initarg :id            :initform nil)
   (name        :accessor name          :initarg :name          :initform "I dont have a name.")
   (note        :accessor note          :initarg :note          :initform "")
   ;; location
   (x           :accessor x             :initarg :x             :initform 0)
   (y           :accessor y             :initarg :y             :initform 0)
   (z           :accessor z             :initarg :z             :initform 0)
   ;; submit
   (status      :accessor status        :initarg :status        :initform 0)
   (thread      :accessor thread        :initarg :thread        :initform nil)
   (timestamp   :accessor timestamp     :initarg :timestamp     :initform nil)))


(defclass omae-timer (omae)
  ((datetime :accessor datetime :initarg :datetime  :initform nil)))


(defclass omae-wait (omae)
  ((time-wait :accessor time-wait :initarg :time-wait  :initform nil)))


(defclass omae-cl (omae)
  ((code :accessor code :initarg :code  :initform nil)))


(defclass air (atman)
  ((from      :accessor from      :initarg :from      :initform nil)
   (to        :accessor to        :initarg :to        :initform nil)
   (port      :accessor port      :initarg :port      :initform nil)
   (status    :accessor status    :initarg :status    :initform :born)
   (contents  :accessor contents  :initarg :contents  :initform nil)
   (timestamp :accessor timestamp :initarg :timestamp :initform (list :create (get-universal-time)))))


(defclass beat ()
  ((id :accessor id :initarg :id :initform nil)
   (bpm :accessor bpm :initarg :bpm :initform 3)
   (life :accessor life :initarg :life :initform t)))
