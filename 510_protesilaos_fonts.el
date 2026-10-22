;;; package --- Summary

;; C-x C-e to run SEXP

;; normal cursor = purple
(setq evil-normal-state-cursor '(box "purple"))

;; insert cursor = bar, greenish 
(setq evil-insert-state-cursor '((bar . 5)  "blue"))


;; ---- toolbar, menubar ...
(setq inhibit-startup-screen t)
(menu-bar-mode 0)  ;; remove
(menu-bar-mode 1)  ;; restore

(tool-bar-mode 0)  ;; remove
;; (tool-bar-mode 1)  ;; restore

;; ---- fonts ----
;; list fonts
(print (font-family-list))

;; TODO (now:  using menu/options/font...)
;; (set-default-font "Ubuntu Mono-18")  - error


;; CHANGE HEIGHT and ^x^e   (200 is much too large,  100 a bit too small)
;; REF: https://protesilaos.com/codelog/2024-11-28-basic-emacs-configuration/#h:c7528f3d-9fc8-49e5-9468-6868fb5c07b5

(let ((mono-spaced-font "Monospace")
      (proportionately-spaced-font "Sans"))
  (set-face-attribute 'default nil :family mono-spaced-font :height 120)
  (set-face-attribute 'fixed-pitch nil :family mono-spaced-font :height 1.0)
  (set-face-attribute 'variable-pitch nil :family proportionately-spaced-font :height 1.0))



;; Prot's book on elsip

;;------------------------ symbol

;; create symbol; value is "Protestsilaos"
(defvar my-name "Protesilaos")

;; print value
     my-name
;; same
     (symbol-value 'my-name)

;; set var and  value, get its value 
(setq xx (list 1))
(symbol-value 'xx)

;; https://protesilaos.com/emacs/emacs-lisp-elements#h:evaluate-emacs-lisp
;; more from Prot
(message "Hello world, this is my message to you!")

;; compare note quote
(upcase (message "Hello world, the number is %s" (+ 1 1 1)))
(message "I got this: %s" '(one two three)) 

;;------------------------ eval in mini-buffer

;; Prot:  evaluate code in mini-buffer
;; Example: M-x eval-expression, then (buffer-file-name) RET  (returns bufer name)

;; same, c-x c-e does the same:
(buffer-file-name)


;; ------------------------ load-path (list-like?)
load-path

;; needs '
(symbol-value 'load-path)

;; set width height
(modify-all-frames-parameters
 '((tool-bar-lines . 0)
   (width . 80)
   (height . 44)))
