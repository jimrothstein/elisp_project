(defun my/typst-purge ()
  "Delete all Typst-related packages and files, then verify removal."
  (interactive)
  (when (yes-or-no-p "This will delete all Typst packages and files. Proceed? ")
    (let ((search-dir (expand-file-name user-emacs-directory))
          (found-items '()))
      
      ;; 1. Find the items
      (setq found-items (directory-files-recursively search-dir "typst" t))
      
      ;; 2. Delete items
      (dolist (item found-items)
        (cond
         ((file-directory-p item)
          (delete-directory item t t)
          (message "Deleted Directory: %s" item))
         ((file-exists-p item)
          (delete-file item t)
          (message "Deleted File: %s" item))))
      
      ;; 3. Final Verification check
      (let ((remaining (directory-files-recursively search-dir "typst" t)))
        (if (null remaining)
            (message "SUCCESS: All Typst files purged.")
          (message "WARNING: %d items remain. Check *Messages* buffer." (length remaining)))))))
