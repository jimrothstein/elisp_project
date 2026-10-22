;;; package --- Summary

;; C-x C-e to run SEXP

;; normal cursor = purple
(setq evil-normal-state-cursor '(box "purple"))

;; insert cursor = bar, greenish 
(setq evil-insert-state-cursor '((bar . 5)  "green"))


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








