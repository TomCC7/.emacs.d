(use-package lispy
  :config
  (defun conditionally-enable-lispy ()
    (when (eq this-command 'eval-expression)
      (lispy-mode 1)))
  (add-hook 'minibuffer-setup-hook 'conditionally-enable-lispy)
  :hook
  ((lisp-mode emacs-lisp-mode) . lispy-mode))
(use-package slime
  :config
  (setq slime-lisp-implementations
	'((sbcl ("/usr/bin/sbcl") :coding-system utf-8-unix)))
  (slime-setup '(slime-repl)))
;; guard
(provide 'init-prog-clisp)
