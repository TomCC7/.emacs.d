(require 'init-packages)
;; {{ yasnippet
(use-package yasnippet
  :config
  (setq yas-snippet-dirs
	(list (concat user-emacs-directory "snippets/")))
  :hook
  ((prog-mode org-mode) . yas-minor-mode))
;; }}

(require 'init-prog-verilog)
(require 'init-prog-python)
(require 'init-prog-clisp)
(require 'init-prog-elisp)
(require 'init-prog-cc)
(provide 'init-prog)
