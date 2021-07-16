;; disable auto backup
(setq make-backup-files nil)

;; fill-column
(setq fill-column 65)

;; line number
(add-hook 'prog-mode-hook #'linum-mode)
(setq display-line-numbers-type 'relative)

(provide 'init-misc)
