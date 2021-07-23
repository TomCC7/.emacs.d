;; syntax highlighting
(setq org-highlight-latex-and-related '(native latex script entities))
;; format latex options
(setq org-format-latex-options
      (plist-put org-format-latex-options :scale 0.8))
;; auctex
(use-package auctex :defer t)

;; {{ cdlatex
(use-package cdlatex
  :config
  (add-hook 'org-mode-hook 'turn-on-org-cdlatex)
)
;; }}

;; {{ export org-mode in Chinese into PDF
;; @see http://freizl.github.io/posts/tech/2012-04-06-export-orgmode-file-in-Chinese.html
(setq org-latex-pdf-process
      '("xelatex -interaction nonstopmode -output-directory %o %f"
	;; "bibtex %b"
        "xelatex -interaction nonstopmode -output-directory %o %f"
        "xelatex -interaction nonstopmode -output-directory %o %f")) ;; org v8

;; (setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f"))
;; }}

;; guard
(provide 'init-org-latex)
