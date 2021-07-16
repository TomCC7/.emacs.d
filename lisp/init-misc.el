;; disable auto backup
(setq make-backup-files nil)

;; fill-column
(setq fill-column 65)

;; line number relative
(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook (lambda () (display-line-numbers-mode 'relative)))
(add-hook 'org-mode-hook (lambda () (display-line-numbers-mode 'relative)))

(provide 'init-misc)
