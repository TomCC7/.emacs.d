(require 'init-packages)
;; themes
(use-package dracula-theme)
(use-package color-theme-sanityinc-tomorrow)
(use-package color-theme-sanityinc-solarized)
(use-package zenburn-theme)
(use-package atom-one-dark-theme)
;; select theme
(load-theme 'dracula t nil)

;; guard
(provide 'init-themes)
