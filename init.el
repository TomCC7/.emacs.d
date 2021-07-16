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
;; env
(require 'init-env)
;; packages
(toggle-debug-on-error t)
(require 'init-packages) ;; straight
(require 'init-misc)
(require 'init-utils)
(require 'init-evil)
(require 'init-company)
(require 'init-ivy)
(require 'init-enhancements) ;; enhancement to default
(require 'init-prog) ;; programming
(require 'init-org)
(require 'init-themes) ;; themes
;;		;; --- Better Editor ---
;;		hungry-delete
;;		swiper
;;		counsel
;;		smartparens
;;		;; --- Major Mode ---
;;		js2-mode
;;		;; --- Minor Mode ---
;;		exec-path-from-shell
;;		;; --- themes ---
;;		monokai-theme
;;		arc-dark-theme
;;		;; solarized-theme
;;		) "Default packages")
;;
;; theme
;; (load-theme 'arc-dark 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#c82829" "#718c00" "#eab700" "#4271ae" "#8959a8" "#3e999f" "#4d4d4c"))
 '(beacon-color "#c82829")
 '(custom-enabled-themes '(sanityinc-tomorrow-night))
 '(custom-safe-themes
   '("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default))
 '(debug-on-error t)
 '(fci-rule-color "#d6d6d6")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'light)
 '(helm-minibuffer-history-key "M-p")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#c82829")
     (40 . "#f5871f")
     (60 . "#eab700")
     (80 . "#718c00")
     (100 . "#3e999f")
     (120 . "#4271ae")
     (140 . "#8959a8")
     (160 . "#c82829")
     (180 . "#f5871f")
     (200 . "#eab700")
     (220 . "#718c00")
     (240 . "#3e999f")
     (260 . "#4271ae")
     (280 . "#8959a8")
     (300 . "#c82829")
     (320 . "#f5871f")
     (340 . "#eab700")
     (360 . "#718c00")))
 '(vc-annotate-very-old-color nil)
 '(wakatime-cli-path "/usr/bin/wakatime")
 '(wakatime-python-bin nil)
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
