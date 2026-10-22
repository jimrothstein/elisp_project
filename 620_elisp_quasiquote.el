;;; 620_elisp_quasiquote.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2026 jim
;;
;; Author: jim <jim@jim-debian>
;; Maintainer: jim <jim@jim-debian>
;; Created: August 18, 2026
;; Modified: August 18, 2026
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex text tools unix vc wp
;; Homepage: https://github.com/jim/620_elisp_quasiquote
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:
;;;
;; To run in REPL:   M-x ielm RET
;; To get REPL> prmompt:   M-x ielm RET
;;
;; To run buffer:   M-x eval-buffer
;; To run ONE line;   M-x eval-region

;; ** ^x^e Position AFTER code; C-x C-e evaluates**

;; everything is a list
;; '(a b) says treat as literal, a is not function  ' is short for quote (a b)
;; `(a ,(+ x 1)) says quasiquotation ahead, some literal, some
;; ,@xs says evaluate xs into the surrounding environment (splices), ie not a (b c) d
;; `(a ,@xs d))  - says quasiquotation ahead, treat a as literal, expand @xs and splice the whole thing

;; at evaluate time (^x ^e),comma indicates evaluate, 1 added to x,
(let ((x 42))
  `(answer ,(+ x 1)))


;; => (answer 43)

(let ((xs '(b c)))
  `(a ,@xs d))

; (a b c d)
;
;; (1+ score) is shortcut for (+ 1 score)
(let ((name "Ada")
      (score 9))
  `(student ,name scored ,(1+ score)))

; car returns the first element, does not modify list
;(car '(8 9 10))
2. ;; => 8
1. (car '(8 9 10))
2. ;; => 8

(let ((name "Ada")
      (scores '(8 9 10))
      (bonus 1))
  `(report
    (student ,name)
    (scores ,@scores)
    (final-score ,(+ bonus (car scores)))))
;;; 620_elisp_quasiquote.el ends here
