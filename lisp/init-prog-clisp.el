(use-package lispy
  :config
  (defun conditionally-enable-lispy ()
    (when (eq this-command 'eval-expression)
      (lispy-mode 1)))
  (add-hook 'minibuffer-setup-hook 'conditionally-enable-lispy)
  :hook
  ((lisp-mode emacs-lisp-mode) . lispy-mode))
;; guard
(provide 'init-prog-clisp)
