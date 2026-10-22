;; Touretzshi: http://www.cs.cmu.edu/~dst/LispBook/book.pdf

;; Chatper 3 EVAL

;; http://www.cs.cmu.edu/~dst/LispBook/book.pdf (1990 Common Lisp)

;; To run:   M-x ielm RET
;; To run buffer:   M-x eval-buffer
;; To run ONE line;   M-x eval-region

;; **Position AFTER code; C-x C-e evaluates**

;; IMPORTANT !
;; `+` is an already defined function
;; This statements says:
;; Use 2 and 3 as INPUTS to `+`
;; Evaluate, using function's receipe
;; Return result number 5
(+ 2 3)


;; error, no `oddp` in elisp? 
(oddp 3)

;; DO NOT FORGET the EVAL arguments step 1st, even though trivial here.
;; After we INPUT 2 aruguments, 1st step is the arguments are evaluated
;; (in this case numbers evaluate to themselves)
;; THEN functions follow receipes and reutrn result 
(not (equal 3 4))
(not (equal 3 3))
