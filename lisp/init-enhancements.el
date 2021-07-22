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
  )
;; }}


(require 'init-enhancements-whichkey)
(require 'init-enhancements-tabs)
;; guard
(provide 'init-enhancements)
