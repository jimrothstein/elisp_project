;; To run in REPL:   M-x ielm RET
;; To get REPL> prmompt:   M-x ielm RET
;;
;; To run buffer:   M-x eval-buffer
;; To run ONE line;   M-x eval-region

;; **Position AFTER code; C-x C-e evaluates**

(+ 4 5) 

;; symbols is NOT actual value or instructions,  when eval the symbol (^x^e) get the value (if string, number ...) or instructions (if function)
emacs-version  (28.2)
buffer-file-name
fill-column  (70)

;; function
(defun add-nums (+ a b) )
(add-nums 2 3)



(setq a 'x)
