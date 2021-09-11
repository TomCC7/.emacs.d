;; {{ cmake-mode
(use-package cmake-mode)
;; }}

;; {{ rtags
;; (use-package rtags)
;; }}

;; {{ srefactor
(use-package srefactor
  :ensure t
  :config
  (semantic-mode 1)
  (define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
  (define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
  )
;; }}

;; {{ clang-format
(use-package clang-format
  :config
  (defun clang-format-on-save ()
    (add-hook 'before-save-hook
	      #'clang-format-buffer nil t))
  :hook
  ((c-mode c++-mode) . #'clang-format-on-save))
;; }}

;; guard
(provide 'init-prog-cc)
