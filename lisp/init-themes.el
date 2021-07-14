(require 'init-packages)
;; themes
(use-package monokai-theme)
(use-package doom-themes)
(use-package arc-dark-theme)
;; select theme
(load-theme 'monokai t nil)

(defun my-tab-tab-bar-toggle ()
  "Toggle `tab-bar' presentation."
  (interactive)
  (if (bound-and-true-p tab-bar-mode)
      (progn
        (setq tab-bar-show nil)
        (tab-bar-mode -1))
    (setq tab-bar-show t)
    (tab-bar-mode 1)))

;; guard
(provide 'init-themes)
