(require 'init-packages)
;; close tool bar
(tool-bar-mode -1)
;; clsoe scroll bar
(scroll-bar-mode -1)

;; menu bar
(menu-bar-mode -1) 

;; close help
(setq inhibit-splash-screen 1)

;; font size and type
(set-frame-font  "MesloLGS Nerd Font 14" t t)

;; {{ packages
(use-package all-the-icons)
;; (use-package mode-icons)
;; }}

;; guard
(provide 'init-appearance)
