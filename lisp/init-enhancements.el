(require 'init-packages)
;; {{ amx
(use-package amx
  :config
  (amx-mode))
;; }}

;; {{ helpful
(use-package helpful)
;; Note that the built-in `describe-function' includes both functions
;; and macros. `helpful-function' is functions only, so we provide
;; `helpful-callable' as a drop-in replacement.
(global-set-key (kbd "C-h f") #'helpful-callable)

(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)
;; Lookup the current symbol at point. C-c C-d is a common keybinding
;; for this in lisp modes.
(global-set-key (kbd "C-c C-d") #'helpful-at-point)
(define-key evil-normal-state-map "K" #'helpful-at-point)
;; }}

;; {{ ranger
(use-package ranger)
(ranger-override-dired-mode t)
;; }}

;; guard
(provide 'init-enhancements)
