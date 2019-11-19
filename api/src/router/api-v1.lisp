(in-package :cl-user)
(defpackage nobit@.api.api-v1
  (:use :cl
        :caveman2
        :lack.middleware.validation
        :nobit@.api.config
        :nobit@.api.render
        :nobit@.api.controller)
  (:export #:*router*))
(in-package :nobit@.api.api-v1)

(defun str2type-keyword (str)
  (let ((v (string-upcase str)))
    (assert (find v '("G*AN" "4NEO" "NOBIT@") :test 'equal))
    (alexandria:make-keyword v)))


;;;;;
;;;;; Application
;;;;;
(defclass <router> (<app>) ())
(defvar *router* (make-instance '<router>))
(clear-routing-rules *router*)


;;;;;
;;;;; Routing rules
;;;;;
(defroute "/" ()
  (render-json nil))


;;;
;;; Resource
;;;
(defroute ("/friends/g*an" :method :POST) (&key |name| |description|)
  (let ((name        (validate |name|        :string :require t   :url-decode t))
        (description (validate |description| :string :require nil :url-decode t))
        (graph nobit@.graph:*graph*))
    (render-json
     (up:execute-transaction
      (tx-create-g*an graph
                      :name name
                      :description description)))))


(defroute ("/friends/4neo" :method :POST) (&key |name| |description|)
  (let ((name        (validate |name|        :string :require t   :url-decode t))
        (description (validate |description| :string :require nil :url-decode t))
        (graph nobit@.graph:*graph*))
    (render-json
     (up:execute-transaction
      (tx-create-4neo graph
                      :name name
                      :description description)))))


(defroute ("/friends/nobita" :method :POST) (&key |name| |description|)
  (let ((name        (validate |name|        :string :require t   :url-decode t))
        (description (validate |description| :string :require nil :url-decode t))
        (graph nobit@.graph:*graph*))
    (render-json
     (up:execute-transaction
      (tx-create-nobit@ graph
                        :name name
                        :description description)))))


(defroute ("/friendship" :method :POST)
    (&key |from_id| |to_id| |description| |heart_code|)
  (let ((from-id     (validate |from_id|     :integer :require t))
        (to-id       (validate |to_id|       :integer :require t))
        (heart-code  (validate |heart_code|  :string  :require t   :url-decode t))
        (description (validate |description| :string  :require nil :url-decode t))
        (graph nobit@.graph:*graph*))
    (render-json
     (up:execute-transaction
      (tx-create-friendship graph
                            :from-id     from-id
                            :to-id       to-id
                            :heart-code  heart-code
                            :description description)))))


(defroute ("/doraamon/:id/future-tools" :method :POST)
    (&key id |name| |description| |package| |operator|)
  (let ((id          (validate id            :integer :require t))
        (name        (validate |name|        :string  :require t   :url-decode t))
        (description (validate |description| :string  :require nil :url-decode t))
        (package     (validate |package|     :string  :require t   :url-decode t))
        (operator    (validate |operator|    :string  :require t   :url-decode t))
        (graph nobit@.graph:*graph*))
    (let ((dora@mon (nobit@.dora@mon::get-dora@mon graph :%id id)))
      (unless dora@mon (throw-code 404))
      (render-json (add-future-tool-in-dora@mon graph dora@mon
                                                :name name
                                                :description description
                                                :package-name package
                                                :operator-name operator)))))



;;;
;;; Pages
;;;
(defroute "/pages/school-district" ()
  (render-json (list :|nodes|  (nobit@.api.controller:nodes)
                     :|edges|  (nobit@.api.controller:edges)
                     :|hearts| (nobit@.api.controller:find-hearts))))


(defroute "/pages/school-district-karma" ()
  (render-json (list :|packages| (mapcar #'(lambda (p)
                                             (list :|name| (package-name p)
                                                   :|nicknames| (package-nicknames p)))
                                         (list-all-packages)))))


(defroute "/pages/nobita/:id" (&key id)
  (let ((id     (validate id :integer :require t))
        (graph nobit@.graph:*graph*))
    (render-json (pages-nobit@ graph id))))


(defroute "/pages/student-desk" ()
  (let ((graph nobit@.graph:*graph*))
    (render-json (pages-student-desk graph))))


(defroute "/pages/doraamon/:id" (&key id)
  (let ((id (validate id :integer :require t))
        (graph nobit@.graph:*graph*))
    (let ((dora@mon (nobit@.dora@mon::get-dora@mon graph :%id id)))
      (unless dora@mon (throw-code 404))
      (render-json (pages-dora@mon graph dora@mon)))))


(defroute "/pages/doraamon/:id/future-tools/create" (&key id |package-name|)
  (let ((id (validate id :integer :require t))
        (package-name (validate |package-name| :string :require nil))
        (graph nobit@.graph:*graph*))
    (let ((dora@mon (nobit@.dora@mon::get-dora@mon graph :%id id)))
      (unless dora@mon (throw-code 404))
      (render-json (pages-dora@mon-future-tools-create graph
                                                       dora@mon
                                                       :package-name package-name)))))


(defroute "/pages/future-tools/:id" (&key id)
  (let ((id (validate id :integer :require t))
        (graph nobit@.graph:*graph*))
    (let ((future-item (nobit@.dora@mon::get-future-tool graph :%id id)))
      (unless future-item (throw-code 404))
      (render-json (pages-future-tool graph future-item)))))


;;;
;;; Olds
;;;
(defroute "/nodes" ()
  (render-json (nobit@.api.controller:nodes)))


(defroute ("/nodes/:node-id/location" :method :POST)
    (&key node-id |type| |contents|)
  (let ((_id (parse-integer node-id))
        (type (str2type-keyword |type|)))
    (render-json (nobit.api.ctrl:save-node-location _id type |contents|))))


(defroute "/edges" ()
  (render-json (nobit@.api.controller:edges)))


(defroute "/hearts" ()
  (render-json (nobit@.api.controller:find-hearts)))



;;;;;
;;;;; Error pages
;;;;;
(defmethod on-exception ((app <router>) (code (eql 404)))
  (declare (ignore app))
  "404")
