(require 'init-packages)
;; {{ evil
(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t) ;; use C-u as scrollup
  :bind
  (:map evil-normal-state-map
	("g C-g" . 'count-words-region)))
(evil-mode 1)
;; }}

;; {{ evil-collection
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))
;; }}

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

;; {{ evil-surround @see https://github.com/timcharper/evil-surround for tutorial
(use-package evil-surround
  :ensure t
  :config
  (with-eval-after-load 'evil-surround
    (defun evil-surround-prog-mode-hook-setup ()
      "Set up surround shortcuts."
      (cond
       ((memq major-mode '(sh-mode))
	(push '(?$ . ("$(" . ")")) evil-surround-pairs-alist))
       (t
	(push '(?$ . ("${" . "}")) evil-surround-pairs-alist)))

      (when (memq major-mode '(org-mode))
	(push '(?\[ . ("[[" . "]]")) evil-surround-pairs-alist) ; [
	(push '(?= . ("=" . "=")) evil-surround-pairs-alist))

      (when (memq major-mode '(emacs-lisp-mode))
	(push '(?\( . ("( " . ")")) evil-surround-pairs-alist)
	(push '(?` . ("`" . "'")) evil-surround-pairs-alist))

      (when (or (derived-mode-p 'js-mode)
		(memq major-mode '(typescript-mode web-mode)))
	(push '(?j . ("JSON.stringify(" . ")")) evil-surround-pairs-alist)
	(push '(?> . ("(e) => " . "(e)")) evil-surround-pairs-alist))

      ;; generic
      (push '(?/ . ("/" . "/")) evil-surround-pairs-alist))
    (add-hook 'prog-mode-hook 'evil-surround-prog-mode-hook-setup))
  ;; enable
  (global-evil-surround-mode 1))
;; }}

;; {{ evil-nerd-commenter
(use-package evil-nerd-commenter
  :config
  (evilnc-default-hotkeys) ;; default keybinding
  (define-key evil-motion-state-map "gc" 'evilnc-comment-operator) ; same as doom-emacs
  (define-key evil-motion-state-map "gb" 'evilnc-copy-and-comment-operator)
  (define-key evil-motion-state-map "gy" 'evilnc-yank-and-comment-operator)
  )
;; }}

;; {{ powerline-evil
(use-package powerline-evil
  :config
  (powerline-evil-vim-color-theme))
;; }}

;; {{ evil-snipe
(use-package evil-snipe
  :config
  (evil-snipe-mode)
  (evil-snipe-override-mode))
;;}}

;; evil leader
(require 'init-evil-leader)
(require 'init-evil-keybindings)
;; guard
(provide 'init-evil)
