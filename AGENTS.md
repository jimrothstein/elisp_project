# AGENTS.md - Emacs Lisp Practice Project

This is a personal Emacs Lisp learning project containing various elisp practice files.

## Project Overview

- **Language**: Emacs Lisp (.el files)
- **Purpose**: Learning and practicing Emacs Lisp
- **Structure**: Multiple `.el` files organized by topic (e.g., `010_basic_elisp.el`, `040_operate_emacs.el`, `SICP/`)

## Important, global rules
# opencode agents may modify this file "AGENTS.md" but do not modify any other files in this project. 
# 

## Build/Lint/Test Commands

### Running Elisp Code

```bash
# In Emacs:
# Evaluate buffer: M-x eval-buffer
# Evaluate region: M-x eval-region
# Evaluate last sexp: C-x C-e (position cursor AFTER the closing paren)
# Interactive REPL: M-x ielm
```

### Emacs Built-in Commands

```elisp
;; Check syntax/byte-compile a file
M-x byte-compile-file

;; Check for undefined functions
M-x checkdoc

;; Run ert tests (Emacs Lisp Regression Testing)
;; https://www.gnu.org/software/emacs/manual/html_mono/ert.html
M-x ert
M-x ert-run-tests-buffer
M-x ert-run-tests-region
```

### Single Test Execution

```elisp
;; Run a specific test function in ert
(ert-run-tests "^test-name$" t)

;; Or interactively: M-x ert RET test-name RET

;; Define a test
(ert-deftest my-test ()
  "Test description."
  (should (= (+ 1 1) 2))
  (should-not (null '(1 2 3))))
```

### Linting

```elisp
;; Use flycheck for on-the-fly linting
M-x flycheck-mode

;; Check for style issues
M-x checkdoc-minor-mode

;; Byte-compile to catch errors
M-x byte-compile-file RET filename.el RET
```

## Code Style Guidelines

### General Conventions

1. **File Headers**: Use standard Emacs Lisp header format:
   ```elisp
   ;;; filename.el --- Description of file purpose -*- lexical-binding: t; -*-
   ```

2. **Comments**: Use double semicolons `;;` for section headers, single `;` for inline

3. **Documentation Strings**: Always provide docstrings for functions:
   ```elisp
   (defun function-name (args)
     "Description of what function does."
     (interactive "p")
     body...)
   ```

### Naming Conventions

- **Functions/variables**: Use kebab-case (e.g., `my-function-name`, `my-variable`)
- **Predicates**: End with `-p` (e.g., `valid-p`, `numberp`)
- **Constants**: Use all-caps with hyphens (e.g., `MAX-VALUE`)
- **Private functions**: Start with double dash `--internal-func`
- **Hooks**: Name with `-hook` suffix (e.g., `my-mode-hook`)
- **Mode names**: Use `-mode` suffix (e.g., `my-special-mode`)

### Formatting

- Use spaces (not tabs) for indentation (recommended: 2 spaces)
- 80-character line limit is typical
- Use `setq` for setting variables, `defvar` for declaring globals
- Use `let` for local bindings:
  ```elisp
  (let ((var1 value1)
        (var2 value2))
    body...)
  ```

### Imports and Requires

- Use `(require 'feature)` for loading libraries
- Use `(use-package feature)` for package configuration (if available)
- Use `(autoload 'function "file")` for lazy loading

### Types

- Emacs Lisp is dynamically typed
- Use type predicates for checking: `numberp`, `stringp`, `listp`, `symbolp`, `functionp`
- Use `cl-type-of` for runtime type inspection
- Use `cl-lib` for Common Lisp extensions (requires `(require 'cl-lib)` and `cl-` prefix)

### Common Patterns

```elisp
;; Threading macros
(require 'cl-lib)
(require 'subr-x)  ; for string-suffix-p, string-trim, etc.

;; Using thread-first (->) and thread-last (->>)
(->> '(1 2 3 4 5)
  (mapcar #'1+)
  (cl-remove-if #'evenp)
  (apply #'+))  ; => 9

;; Using pcase for pattern matching
(pcase expr
  (`(,a ,b) (list a b))
  (`(,x . ,xs) (cons x xs))
  (_ 'default))
```

### Error Handling

```elisp
;; Condition-case for handling errors
(condition-case err
    (risky-function)
  (error (message "Error: %s" err)))

;; Use assert for debugging
(assert (= (+ 1 1) 2))
```

### Interactive Functions

- Use `interactive` spec for commands:
  ```elisp
  (defun my-command (arg)
    "Docstring."
    (interactive "p")        ; numeric prefix arg
    ;; or
    (interactive "sPrompt:") ; string input
    ...)

  ;; Common interactive specs:
  ;; "p" - numeric prefix argument
  ;; "P" - raw prefix argument
  ;; "s" - string input
  ;; "r" - region (start end) for functions operating on region
  ;; "b" - existing buffer name
  ;; "f" - existing file name
  ;; "F" - possibly new file name
  ;; "n" - number input
  ;; "v" - variable name
  ;; "k" - key sequence
  ```

### Key Binding Conventions

- Use `bind-key` or `global-set-key`:
  ```elisp
  (global-set-key (kbd "C-c w") 'whitespace-mode)
  (bind-key "C-x C-k" 'kill-some-buffers)
  ```

### Best Practices

1. Enable lexical binding: ` -*- lexical-binding: t; -*-` at top of file
2. Prefer pure functions when possible
3. Use `mapcar`, `mapc`, `dolist` instead of explicit loops
4. Use `thread-first` (->) or `thread-last` (->>) macros for readability
5. Keep functions small and focused
6. Use meaningful variable/function names
7. Test functions with ert when possible

## Additional Resources

- Emacs Lisp Reference: https://www.gnu.org/software/emacs/manual/html_node/elisp/
- Emacs Wiki: https://www.emacswiki.org/
- ERT Manual: https://www.gnu.org/software/emacs/manual/html_node/ert/
