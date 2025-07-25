;; To run:   M-x ielm RET
;; To run buffer:   M-x eval-buffer
;; To run ONE line;   M-x eval-region

;; **Position AFTER code; C-x C-e evaluates**

;; tags: let, defun, eval, substring, concat
(+ 4 5)

emacs-version
buffer-file-name


;; use fill-column (width); it is a symbol and need to evaluate it
(concat "The " (number-to-string (+ 2 fill-column)) " red foxes")

;; shocking, it evaluates to itself, letter a
(eval "a")

;; remember 1st step is to evaluate arguments, even if trivial
(concat "a" "b")

;; elisp zero-based;  FROM TO (TO means up to and NOT including) 
;; "cd"
(substring "abcd" 2 4)

;; setq takes w aruguments, here second is list 
;; x is symbol, but in this case setq requires it be literal (??)
;; does two things, prints (rose violet) 
;; side effect:  symbol x points to list
(setq x '(rose violet))

;; but this is error, b/c literal (????)
(eval x)

;; return itself
(eval 'x)  

;; function
(defun add-nums (+ a b) )
(add-nums 2 3)

;;  lambda
((lambda (number) (* number 7)) 3)


;; nreverse
(nreverse '(1 2 3 4))
(nreverse (1 2 3 4))   # error

(reverse abc)    # error


(def rac (lambda (abc) (car(nreverse abc)))  # OK
     rac(abc)  # error

(def rac (lambda (abc)) (car (reverse abc)))

;; load, import library
(require 'ert)

;; return logical
(equal 5 5)

;; if-then
(if (< 0 4) "yes" "no")

;; predicate; no space before p
(numberp 1.1)

(number p "a")


;; REGISTERS
;; set-register to open  a file (C-x C-3 AFTER code)
(set-register ?i (cons 'file "~/code/elisp_project/second"))


(set-register ?r (cons 'file "~/code/docs/tech_notes/310_R_notes.qmd")
(set-register ?z (cons 'file "~/code/elisp_project/second"))

;; TODO set and use a variable using `let`
(let (z "A"))
(let z "A")
(t "B")

(message "item %s" z)
;; (message "Item %s and %s" z t)
)
)
;; LOCAL VARIABLE
;; Create local variable
(defvar jim_var nil "Your documentation here.")

(set (make-local-variable 'jim_var) <the-value>)

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

;; defun
;; then use C-u 5;  M-x multiply-by-seven(
(defun multiply-by-seven (number)       ; Interactive version.
  "Multiply NUMBER by seven."
  (interactive "p")
  (message "The result is %d" (* 7 number)))

;; TODO:
(defun my_name ()
  "Returns my name."
  (interactive "p")
  (message "your name is jim"))

;; assign variable (?) zebra value `stripes`
(let ((zebra "stripes")
      (tiger "fierce"))
  (message "One kind of animal has %s and another is %s."
           zebra tiger))


