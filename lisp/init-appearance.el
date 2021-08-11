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
(set-frame-font  "MesloLGS Nerd Font 12" t t)
(defun my/zoom-in ()
  "Increase font size by 10 points"
  (interactive)
  (set-face-attribute 'default nil
                      :height
                      (+ (face-attribute 'default :height)
                         10)))

(defun my/zoom-out ()
  "Decrease font size by 10 points"
  (interactive)
  (set-face-attribute 'default nil
                      :height
                      (- (face-attribute 'default :height)
                         10)))

;; change font size, interactively
(global-set-key (kbd "C-+") 'my/zoom-in)
(global-set-key (kbd "C--") 'my/zoom-out)

;; highlight current line
(global-hl-line-mode 1)

;; {{ prettify-symbols-mode
(defconst lisp--prettify-symbols-alist
  '(("lambda"  . ?λ)
    ("->" . ?→)
    ("->>" . ?↠)
    ("=>" . ?⇒)
    ("/=" . ?≠)
    ("!=" . ?≠)
    ("==" . ?≡)
    ("<=" . ?≤)
    (">=" . ?≥)
    ("&&" . ?∧)
    ("||" . ?∨)
    ("not" . ?¬)
    ))
(global-prettify-symbols-mode 1)

(add-hook 'emacs-lisp-mode-hook
            (lambda ()
              (push '(">=" . ?≥) prettify-symbols-alist)))
;; }}

;; {{ all-the-icons
(use-package all-the-icons)
;; }}

;; {{ doom-modeline
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))
;; }}

;; {{ emojify
(use-package emojify
  :hook (after-init . global-emojify-mode))
;; }}

;; guard
(provide 'init-appearance)
