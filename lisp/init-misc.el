;; disable auto backup
(setq make-backup-files nil)

;; fill-column
(setq fill-column 80)

;; tab-width
(setq tab-width 4)

;; {{ display line number
(setq display-line-numbers-type 'relative) ;; relative
(setq display-line-numbers-width 1)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'org-mode-hook #'display-line-numbers-mode)
;; }}

(provide 'init-misc)
