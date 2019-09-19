;;; mylib.el --- Example emacs-lisp library

;;; Commentary:
;;
;; This is just a example.

;;; Code:

(defun mylib-add-1 (num)
  "Increment NUM by 1."
  (+ 1 num))

(provide 'mylib)
;;; mylib.el ends here