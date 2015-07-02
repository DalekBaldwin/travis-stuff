(in-package :travis-stuff-test)

(in-root-suite)

(defsuite* test-all)

(deftest test-acceptable-variable-names ()
  (is 
   #.(let* ((sym-list '(.x -x /x +x *x 0x ^ _ @ ! = { } [ ] & $ ~ % ? < >))
            (len (length sym-list)))
       `(equal
         (destructuring-bind ,sym-list
               (iota ,len)
             (list ,@sym-list))
         (iota ,len)))))
