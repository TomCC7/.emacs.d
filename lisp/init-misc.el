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

;; disable auto backup
(setq make-backup-files nil)

;; fill-column
(setq fill-column 65)

;; line number
(add-hook 'prog-mode-hook #'linum-mode)
(setq display-line-numbers-type 'relative)

;; tab bar toggle
(defun my-tab-tab-bar-toggle ()
  "Toggle `tab-bar' presentation."
  (interactive)
  (if (bound-and-true-p tab-bar-mode)
      (progn
        (setq tab-bar-show nil)
        (tab-bar-mode -1))
    (setq tab-bar-show t)
    (tab-bar-mode 1)))


(provide 'init-misc)
