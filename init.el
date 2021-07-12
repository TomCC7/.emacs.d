;; start up time
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d gcs"
                     (format "%.2f seconds" (float-time (time-subtract
                                                         after-init-time
                                                         before-init-time)))
                     gcs-done)))
;; configs
(setq my-http-proxy 'http://127.0.0.1:8889)
;; add load paths
(defconst my-emacs-d (file-name-as-directory user-emacs-directory)
  "Directory of emacs.d")

(defconst my-site-lisp-dir (concat my-emacs-d "site-lisp")
  "Directory of site-lisp")

(defconst my-lisp-dir (concat my-emacs-d "lisp")
  "Directory of lisp.")
(add-to-list 'load-path my-lisp-dir)
;; proxy
(require 'init-proxy)
;; packages
(toggle-debug-on-error t)
(require 'init-packages) ;; straight
(require 'init-company)
(require 'init-input) ;; input enhancement
(require 'init-evil)
(require 'init-themes) ;; themes
;; config
(require 'init-config)
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
