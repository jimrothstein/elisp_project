
(defun my/typst-audit ()
  "List all Typst-related files in the Emacs directory."
  (interactive)
  (let ((search-dir (expand-file-name user-emacs-directory))
        (found-files '()))
    (message "Searching %s for Typst files..." search-dir)
    (setq found-files (directory-files-recursively search-dir "typst" t))
    (if found-files
        (with-current-buffer (get-buffer-create "*Typst-Audit*")
          (erase-buffer)
          (insert "=== Typst Related Files Found ===\n\n")
          (dolist (file found-files)
            (insert file "\n"))
          (display-buffer (current-buffer)))
      (message "No Typst files found."))))

