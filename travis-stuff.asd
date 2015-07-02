;;;; travis-stuff.asd

(defpackage :travis-stuff-system
  (:use :cl :asdf))
(in-package :travis-stuff-system)

(defsystem :travis-stuff
  :name "travis-stuff"
  :serial t
  :components
  ((:static-file "travis-stuff.asd")
   (:module :src
            :components ((:file "package")
                         (:file "travis-stuff"))
            :serial t))
  :depends-on (:alexandria)
  :in-order-to ((test-op (load-op :travis-stuff-test)))
  :perform (test-op :after (op c)
                    (funcall
                     (intern #.(string '#:run-all-tests)
                             :travis-stuff-test))))

(defsystem :travis-stuff-test
  :name "travis-stuff-test"
  :serial t
  :description "Tests for travis-stuff."
  :components
  ((:module :test
            :components ((:file "package")
                         (:file "travis-stuff-test"))))
  :depends-on (:travis-stuff :stefil))
