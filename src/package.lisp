(in-package :cl-user)

(defpackage :travis-stuff
  (:use :cl))

(in-package :travis-stuff)

(defparameter *system-directory*
  (make-pathname
   :directory
   (pathname-directory
    (asdf:system-definition-pathname "travis-stuff"))))
