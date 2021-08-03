(require 'init-packages)
;; {{ misc
(add-hook 'org-mode-hook
	  (lambda ()
	    ;; auto fill mode
	    (turn-on-auto-fill)
	    ;; keymaps
	    (define-key org-mode-map (kbd "C-<return>") #'org-meta-return)
	    ;; display a line to indicate fill column
	    (display-fill-column-indicator-mode 1)
	    ;; line number
	    (display-line-numbers-mode -1)
	    ;; level font size
	    (custom-set-faces
	     '(org-level-1 ((t (:inherit outline-1 :height 1.5))))
	     '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
	     '(org-level-3 ((t (:inherit outline-3 :height 1.2))))
	     '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
	     '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))))
;; }}

(setq
 ;; image preview
 org-image-actual-width (list 600)
 ;; startup with images
 org-startup-with-inline-images t
 ;; remote inline image
 org-display-remote-inline-images 'download
 ;; ellipsis settings
 org-ellipsis " ▾"
 org-hide-emphasis-markers t)
 

;; {{ evil-leader
(evil-leader/set-key-for-mode 'org-mode
  "c e" #'org-export-dispatch)
;; }}

;; {{ org-bullets
;; (use-package org-bullets
;;   :config
;;   (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
;; use superstar instead
(use-package org-superstar
  :init
  (defun my/auto-lightweight-mode ()
    "Start Org Superstar differently depending on the number of lists items."
    (let ((list-items
	   (count-matches "^[ \t]*?\\([+-]\\|[ \t]\\*\\)"
			  (point-min) (point-max))))
      (unless (< list-items 100)
	(org-superstar-toggle-lightweight-lists)))
    (org-superstar-mode))
  :config
  (setq org-superstar-headline-bullets-list '("⁖" "◉" "○" "✸" "✿"))
  :hook
  (org-mode . (lambda ()
		(org-superstar-configure-like-org-bullets)
		(my/auto-lightweight-mode))))
;; }}

;; {{ org-noter
(use-package org-noter
  :config
  (setq org-noter-always-create-frame nil)
  ;; keybindings
  (define-key pdf-view-mode-map (kbd "<normal-state> i") #'org-noter-insert-note)
  (define-key pdf-view-mode-map (kbd "<normal-state> C-f") #'image-scroll-left)
  (define-key pdf-view-mode-map (kbd "<normal-state> C-b") #'image-scroll-right))
  ;; (require 'org-noter-pdftools))

;; (use-package org-pdftools
;;   :hook (org-mode . org-pdftools-setup-link))

;; (use-package org-noter-pdftools
;;   :after org-noter
;;   :config
;;   ;; Add a function to ensure precise note is inserted
;;   (defun org-noter-pdftools-insert-precise-note (&optional toggle-no-questions)
;;     (interactive "P")
;;     (org-noter--with-valid-session
;;      (let ((org-noter-insert-note-no-questions (if toggle-no-questions
;;                                                    (not org-noter-insert-note-no-questions)
;;                                                  org-noter-insert-note-no-questions))
;;            (org-pdftools-use-isearch-link t)
;;            (org-pdftools-use-freestyle-annot t))
;;        (org-noter-insert-note (org-noter--get-precise-info)))))

;;   ;; fix https://github.com/weirdNox/org-noter/pull/93/commits/f8349ae7575e599f375de1be6be2d0d5de4e6cbf
;;   (defun org-noter-set-start-location (&optional arg)
;;     "When opening a session with this document, go to the current location.
;; With a prefix ARG, remove start location."
;;     (interactive "P")
;;     (org-noter--with-valid-session
;;      (let ((inhibit-read-only t)
;;            (ast (org-noter--parse-root))
;;            (location (org-noter--doc-approx-location (when (called-interactively-p 'any) 'interactive))))
;;        (with-current-buffer (org-noter--session-notes-buffer session)
;;          (org-with-wide-buffer
;;           (goto-char (org-element-property :begin ast))
;;           (if arg
;;               (org-entry-delete nil org-noter-property-note-location)
;;             (org-entry-put nil org-noter-property-note-location
;;                            (org-noter--pretty-print-location location))))))))
;;   (with-eval-after-load 'pdf-annot
;;     (add-hook 'pdf-annot-activate-handler-functions #'org-noter-pdftools-jump-to-note)))
;; }}

;; {{ evil-org-mode
(use-package evil-org
  :hook (org-mode . evil-org-mode)
  :config
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))
;; }}

;; {{ org-roam
(use-package org-roam
  :init
  (setq org-roam-directory (file-truename "/home/cc/Documents/emacs/roam")
	org-roam-v2-ack t ;; disable warning
	)
  :bind (("C-c n l" . org-roam-buffer-toggle)
	 ("C-c n f" . org-roam-node-find)
	 ("C-c n g" . org-roam-graph)
	 ("C-c n i" . org-roam-node-insert)
	 ("C-c n c" . org-roam-capture)
	 ;; Dailies
	 ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (org-roam-setup)
  ;; If using org-roam-protocol
  ;; (require 'org-roam-protocol)
  )
;; }}

(require 'init-org-latex)
(require 'init-org-ref)
(require 'init-org-babel)
(provide 'init-org)
