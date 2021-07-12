;; evil config
(use-package evil)
;; enable evil
(evil-mode 1)

;; {{ replace undo-tree with undo-fu
;; @see https://github.com/emacs-evil/evil/issues/1074
;; copied from doom-emacs
(use-package undo-fu)
(define-minor-mode undo-fu-mode
  "Enables `undo-fu' for the current session."
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map [remap undo] #'undo-fu-only-undo)
            (define-key map [remap redo] #'undo-fu-only-redo)
            (define-key map (kbd "C-_")     #'undo-fu-only-undo)
            (define-key map (kbd "M-_")     #'undo-fu-only-redo)
            (define-key map (kbd "C-M-_")   #'undo-fu-only-redo-all)
            (define-key map (kbd "C-x r u") #'undo-fu-session-save)
            (define-key map (kbd "C-x r U") #'undo-fu-session-recover)
            map)
  :init-value nil
  :global t)
(undo-fu-mode 1)
(define-key evil-normal-state-map "u" 'undo-fu-only-undo)
(define-key evil-normal-state-map (kbd "C-r") 'undo-fu-only-redo)
;; }}

;; Store more undo history to prevent loss of data
(setq undo-limit 8000000
      undo-strong-limit 8000000
      undo-outer-limit 8000000)
;; nerd commenter
(use-package evil-nerd-commenter)
(evilnc-default-hotkeys) ;; default keybinding
;; surround
(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(provide 'init-evil)
