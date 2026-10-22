;   REF:  https://github.com/Trevoke/alternate-transient-docs/blob/main/docs/transient-alternate.org

;; NEXT:  write more!
(transient-define-prefix my-first-transient ()
  "A simple transient example."
  ["Actions"
   ("h" "Say hello" (lambda () (interactive) (message "Hello!")))
   ("g" "Say goodbye" (lambda () (interactive) (message "Goodbye!")))
   ("l" "List" list-directory)
   ]
  ["Options"
   ("-v" "Verbose" "--verbose")
   ("-f" "File" "~/.zshenv")]
  )


my name is 
