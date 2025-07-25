;;; package ----
;;; Commentary:  summary:
;; http://www.cs.cmu.edu/~dst/LispBook/book.pdf (1990 Common Lisp)

;; To run:   M-x ielm RET
;; To run buffer:   M-x eval-buffer
;; To run ONE line;   M-x eval-region

;; **Position AFTER code; C-x C-e evaluates**



;; REF: <https://www.reddit.com/r/emacs/comments/cpdr6m/any_additional_docstutorials_on_displaybuffer_and/>

					; USE:  M-x shell
					; if shell is already open in this window, use it;
; if shell is NOT open, display in current buffer
(setq display-buffer-alist '(("\\*shell" (display-buffer-reuse-window display-buffer-same-window))))

;; SEE (ESS manual) 3.5 Control buffer display
;; https://ess.r-project.org/Manual/ess.html#Controlling-buffer-display-1


;;  one buffer for source; ;one for inferior process
(setq display-buffer-alist
      '(("^\\*R"
         (display-buffer-reuse-window display-buffer-pop-up-frame)
         (reusable-frames . 0))))
