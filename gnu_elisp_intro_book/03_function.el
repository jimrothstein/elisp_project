;; not interactiv
;; REF:  See Chapter 3

;; eval; then ^h f multiply-by-seven
;; ^x^e to eval
;; ------------------------  non-interactive
(defun multiply-by-seven (number)
  "Multiply NUMBER by seven."
  (* 7 number))

;; usage: ^x^e
(multiply-by-seven 3)

;; NOT interactive (M-x multipl...) does not work

;; ------------------------ interactive

;; first load:  ^x^e
(defun multiply-by-seven (number)       ; Interactive version.
  "Multiply NUMBER by seven."
  (interactive "p")
  (message "The result is %d" (* 7 number)))

;; USAGE:  ^u 3 M-x multiply-by-seven (ans in `echo` area)


;; ------------------------  bind
;; new style?
;; (keymap-global-set "C-e m" 'multiply-by-seven) ; FAILS

;; old style - works! ^cm
(global-set-key "\C-cm" 'multiply-by-seven)



