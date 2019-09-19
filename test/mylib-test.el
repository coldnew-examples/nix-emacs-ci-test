;;; mylib-test.el --- Tests for mylib

(require 'ert)
(require 'mylib)

(ert-deftest mylib-test/mylib-add-1 ()
  "Test if mylib-add-1 works"
  (should (=  2 (mylib-add-1 1)))
  (should (= 10 (mylib-add-1 9))))