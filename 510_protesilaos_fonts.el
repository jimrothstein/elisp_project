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






