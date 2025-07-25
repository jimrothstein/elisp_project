;; To run in REPL:   M-x ielm RET
;; To get REPL> prmompt:   M-x ielm RET
;;
;; To run buffer:   M-x eval-buffer
;; To run ONE line;   M-x eval-region

;; ** ^x^e Position AFTER code; C-x C-e evaluates**


;; symbols is NOT actual value or instructions,  when eval the symbol (^x^e) get the value (if string, number ...) or instructions (if function)
;; ------------------------  simple info

emacs-version  ;; (28.2)
(buffer-file-name)

;; variable, set to 70
;; ^h v fill-column<RET>
fill-column ;; (70)

;; function
(defun add-nums (+ a b) )
(add-nums 2 3)

;;  set a to x?
(setq a 'x)


;; what mode?
(eq major-mode 'ess-mode)
(eq major-mode 'r-mode)
(eq major-mode 'emacs-lisp-mode)  ;; t

;; elisp-lisp-mode
(message "%s" major-mode)
(print major-mode)

;;  toggle whitespace mode on/off (now in init.el)
(require 'bind-key)
(bind-key* "C-w" 'whitespace-mode)
