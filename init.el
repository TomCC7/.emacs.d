;; start up time
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d gcs"
                     (format "%.2f seconds" (float-time (time-subtract
                                                         after-init-time
                                                         before-init-time)))
                     gcs-done)))
;; add load paths
(defconst my/emacs-d (file-name-as-directory user-emacs-directory)
  "Directory of emacs.d")

(defconst my/site-lisp-dir (concat my/emacs-d "site-lisp")
  "Directory of site-lisp")

(defconst my/lisp-dir (concat my/emacs-d "lisp")
  "Directory of lisp.")
(add-to-list 'load-path my/lisp-dir)

(toggle-debug-on-error t)
;; custom variables and functions
(require 'init-customs)
;; env
(require 'init-env)
;; packages
(require 'init-packages) ;; straight
(require 'init-misc)
(require 'init-utils)
(require 'init-evil)
(require 'init-company)
(require 'init-ivy)
(require 'init-appearance) ;; appearance settings
(require 'init-enhancements) ;; enhancements to default
;; languages
(require 'init-prog) ;; programming
(require 'init-org)
(require 'init-markdown)
(require 'init-themes) ;; themes
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" default))
 '(helm-minibuffer-history-key "M-p")
 '(safe-local-variable-values '((git-commit-major-mode . git-commit-elisp-text-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
