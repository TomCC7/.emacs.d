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
(require 'init-enhancements) ;; enhancements to default
(require 'init-managements)
;; languages
(require 'init-prog) ;; programming
(require 'init-org)
(require 'init-markdown)
(require 'init-appearance) ;; appearance settings
(require 'init-themes) ;; themes
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-minibuffer-history-key "M-p")
 '(org-agenda-files
   '("/mnt/share/JDsync/2021FA/EECS 498 001 FA 2021/hw/hw1/hw1.org" "/mnt/share/JDsync/Documents/emacs/roam/20210916182835-convex_optimization.org" "/mnt/share/JDsync/2021FA/MATH 217 All Sections FA 2021/Homework Sets/hw2/hw2_partb.org" "/mnt/share/JDsync/2021FA/MATH 217 All Sections FA 2021/Homework Sets/hw2/hw2_parta.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.5))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.2))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))
