;; 040_  useful to configure emacs

;; To run:   M-x ielm RET
;; To run buffer:   M-x eval-buffer
;; To run ONE line;   M-x eval-region

;; **Position AFTER code; C-x C-e evaluates**

(+ 4 5)

(emacs-version)

buffer-file-name

;; function
(defun add-nums (+ a b) )
(add-nums 2 3)

;; load, import library
(require 'ert)

;; return logical
(equal 5 5)

;; if-then
(if (< 0 4) "yes" "no")

;; predicate; no space before p
(numberp 1.1)  ;; t
(numberp "a") ;; nil


;; REGISTERS
;; set-register to open  a file (C-x C-3 AFTER code)
(set-register ?i (cons 'file "~/code/elisp_project/second"))
(set-register ?r (cons 'file "~/code/docs/tech_notes/310_R_notes.qmd")
(set-register ?z (cons 'file "~/code/elisp_project/second"))

;;  position AFTER )   C-x C-e
(buffer-file-name)

;; evaluates to itsef
'(5 6 "A")

;; 
?A

;; 10	
?\n

?C-c

;; ^c
(kbd "C-c")

;; list, self-evaluates to itself?
;; but a macro, would evaluate (??)
[1 2 (+ 1 2)]
[+ 2 (+ 1 2)]
(+ 2 (+ 1 2))

;; REGISTERS (put in init.el)
;; set-register to open  a file (C-x C-3 AFTER code)
(set-register ?i (cons 'file "~/code/elisp_project/second"))
(set-register ?r (cons 'file "~/code/docs/tech_notes/310_R_notes.qmd")
(set-register ?z (cons 'file "~/code/elisp_project/second"))
