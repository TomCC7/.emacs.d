;; start up time
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d gcs"
                     (format "%.2f seconds" (float-time (time-subtract
                                                         after-init-time
                                                         before-init-time)))
                     gcs-done)))
;; add load paths
(defconst my-emacs-d (file-name-as-directory user-emacs-directory)
  "Directory of emacs.d")

(defconst my-site-lisp-dir (concat my-emacs-d "site-lisp")
  "Directory of site-lisp")

(defconst my-lisp-dir (concat my-emacs-d "lisp")
  "Directory of lisp.")
(add-to-list 'load-path my-lisp-dir)

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
(require 'init-themes) ;; themes
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "549ccbd11c125a4e671a1e8d3609063a91228e918ffb269e57bd2cd2c0a6f1c6" "f44bb32804c6dc06f539c82ff978f7178eef577caa90c0b89260fa4e67ba3322" default))
 '(helm-minibuffer-history-key "M-p"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
