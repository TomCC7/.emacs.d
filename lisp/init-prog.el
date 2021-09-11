(require 'init-packages)
;; {{ hook
(add-hook 'prog-mode-hook
	  (lambda ()
	    ;; display a line to indicate fill column
	    (display-fill-column-indicator-mode 1)
	    (display-line-numbers-mode 1)))
;; auto mode
(add-to-list 'auto-mode-alist '("\\.launch\\'" . xml-mode))
;; }}
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

;; {{ lsp
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook
  ((c-mode . lsp)
   (c++-mode . lsp)
   (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language
;; }}

;; {{
(use-package yaml-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (add-hook 'yaml-mode-hook
	    '(lambda ()
	       (define-key yaml-mode-map "\C-m" 'newline-and-indent))))
;; }}

(require 'init-prog-verilog)
(require 'init-prog-python)
(require 'init-prog-clisp)
(require 'init-prog-elisp)
(require 'init-prog-cc)
(require 'init-prog-haskell)
(provide 'init-prog)
