
(transient-define-prefix tsc-hello ()
  "Prefix that is minimal and uses an anonymous command suffix."
  [("s" "call suffix"
    (lambda ()
      (interactive)
      (message "Called a suffix")))])

;; First, use M-x org-babel-execute-src-blk to cause `tsc-hello' to be
;; defined
;; Second, M-x `eval-last-sexp' with your point at the end of the line below
;; (tsc-hello)
