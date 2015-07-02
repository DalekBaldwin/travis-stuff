(in-package :cl-user)

(defpackage :travis-stuff-test
  (:use :cl :travis-stuff :stefil :alexandria)
  (:export
   #:test-all))

(in-package :travis-stuff-test)

(defparameter *system-directory* travis-stuff::*system-directory*)
