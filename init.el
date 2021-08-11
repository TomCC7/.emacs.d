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

;; (toggle-debug-on-error t)
;; custom variables and functions
(require 'init-customs)
;; env
(require 'init-env)
;; packages
(require 'init-packages) ;; straight
(require 'init-chinese)
(require 'init-evil)
(require 'init-company)
(require 'init-ivy)
(require 'init-misc)
(require 'init-utils)
(require 'init-appearance) ;; appearance settings
(require 'init-enhancements) ;; enhancements to default
(require 'init-managements)
;; languages
(require 'init-prog) ;; programming
(require 'init-org)
(require 'init-markdown)
(require 'init-themes) ;; themes
