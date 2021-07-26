(require 'init-packages)
;; {{ amx
(use-package amx
  :config
  (amx-mode))
;; }}

;; {{ helpful
(use-package helpful
  :config
  ;; Note that the built-in `describe-function' includes both functions
  ;; and macros. `helpful-function' is functions only, so we provide
  ;; `helpful-callable' as a drop-in replacement.
  (global-set-key (kbd "C-h f") #'helpful-callable)
  (global-set-key (kbd "C-h v") #'helpful-variable)
  (global-set-key (kbd "C-h k") #'helpful-key)
  ;; helpful at point
  (global-set-key (kbd "C-h C-d") #'helpful-at-point)
  (define-key evil-normal-state-map "K" #'helpful-at-point)
  )
;; }}

;; {{ ranger
(use-package ranger
  :config
  (ranger-override-dired-mode t)
  (setq ranger-show-hidden t)
  (setq ranger-modify-header t)
  ;; preview file by default
  (setq ranger-preview-file t)
  ;; show not only plain text 
  (setq ranger-show-literal nil)
  ;; exclude being previewed
  (setq ranger-excluded-extensions '("mkv" "iso" "mp4" "exe" "bin" "msi")))
;; }}

;; {{ smartparens
(use-package smartparens
  :config
  (require 'smartparens-config)
  :hook
  ((prog-mode) . smartparens-mode)
  )
;; }}

;; {{ neotree
(use-package neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
;; }}

(require 'init-enhancements-whichkey)
;; (require 'init-enhancements-tabs) ;; tab enhancements, deprecated
;; guard
(provide 'init-enhancements)
