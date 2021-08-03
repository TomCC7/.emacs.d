(require 'init-packages)
;; themes
(use-package dracula-theme)
(use-package color-theme-sanityinc-tomorrow)
(use-package color-theme-sanityinc-solarized)
(use-package zenburn-theme)
(use-package atom-one-dark-theme)
(use-package doom-themes)
;; select theme
(load-theme 'doom-tomorrow-day t nil)

;; guard
(provide 'init-themes)
