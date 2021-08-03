;; {{ evil-leader
(evil-leader/set-key-for-mode 'org-mode
  "c c i" #'org-ref-insert-link)
(evil-leader/set-key-for-mode 'pdf-view-mode
  "c l" #'org-ref-pdf-to-bibtex)
;; }}
;; {{ orgref
(use-package org-ref
  :init
  ;; citation path
  (setq my/org-citation-dirs	'("~/Documents/emacs/citation.bib")
	my/org-pdf-dir		"~/Documents/emacs/papers"
	my/org-notes-dir	"~/Documents/emacs/notes.org")
  :config
  (setq org-ref-bibliography-notes	my/org-notes-dir
	org-ref-default-bibliography	my/org-citation-dirs
	org-ref-pdf-directory		my/org-pdf-dir
	reftex-default-bibliography	my/org-citation-dirs
	bibtex-completion-bibliography	my/org-citation-dirs
	)
  ;; use ivy for completion
  (org-ref-ivy-cite-completion))
;; }}

;; guard
(provide 'init-org-ref)
