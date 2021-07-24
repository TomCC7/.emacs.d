(require 'init-packages)
;; {{ yasnippet
(use-package yasnippet
  :config
  (setq yas-snippet-dirs
	(list (concat user-emacs-directory "snippets/")))
  :hook
  ((prog-mode org-mode) . yas-minor-mode))
;; }}

;; {{ smart-hungry-delete
(use-package smart-hungry-delete
  :ensure t
  :bind (("<backspace>" . smart-hungry-delete-backward-char)
	 ("C-d" . smart-hungry-delete-forward-char))
  :defer nil ;; dont defer so we can add our functions to hooks 
  :config (smart-hungry-delete-add-default-hooks)
  )
;; }}

(require 'init-prog-verilog)
(require 'init-prog-python)
(require 'init-prog-clisp)
(require 'init-prog-elisp)
(require 'init-prog-cc)
(provide 'init-prog)
