;; To run:   M-x ielm RET
;; To run buffer:   M-x eval-buffer
;; To run ONE line;   M-x eval-region

;; **Position AFTER code; C-x C-e evaluates**

;; SEE 001.53 Hoffman - just a few examples, cons, 'x, cdr
;; ' means, do not evaluate
(setq x '(cake cookie))

(setq y (cons 'pie x))  ;; x gets evaluated, 'pie remains as symbol?
x   ;; evaluates and prints x



(setq pie 4)
(setq z (cons pie x))  ;; evaluate both pie, x

(setq w (cons pie '(cdr z))
(setq v (cons 'pie (cdr z)))
'pie
(setq u (reverse v))

(setq ww (cdr '(a b c)))   ;; cdr drops 1st 

;;; end
