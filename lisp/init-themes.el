(require 'init-packages)
;; themes
(use-package dracula-theme)
(use-package color-theme-sanityinc-tomorrow)
(use-package color-theme-sanityinc-solarized)
(use-package zenburn-theme)
(use-package atom-one-dark-theme)
(use-package doom-themes)
(use-package poet-theme)
;; select theme
(load-theme 'sanityinc-tomorrow-day t nil)

;; guard
(provide 'init-themes)
