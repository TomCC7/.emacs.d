;; syntax highlighting
(setq org-highlight-latex-and-related '(native latex script entities))

;; preview size
(setq org-format-latex-options (plist-put org-format-latex-options :scale 0.6))

;; Rescale latex-preview, adopted from
;; https://emacs.stackexchange.com/questions/3387/how-to-enlarge-latex-fragments-in-org-mode-at-the-same-time-as-the-buffer-text
;; text-scale-mode is automatically turned on after text-scale-adjust
;; (defun update-org-latex-fragments ()
;;   (org-latex-preview '(64))
;;   (plist-put org-format-latex-options :scale text-scale-mode-amount)
;;   (org-latex-preview '(16)))
;; (add-hook 'text-scale-mode-hook 'update-org-latex-fragments)

;; auctex
(use-package auctex :defer t)

;; {{ cdlatex
(use-package cdlatex
  :config
  (add-hook 'org-mode-hook 'turn-on-org-cdlatex))
;; }}

;; {{ export org-mode in Chinese into PDF
;; @see http://freizl.github.io/posts/tech/2012-04-06-export-orgmode-file-in-Chinese.html
(setq org-latex-pdf-process
      '("pdflatex -interaction nonstopmode -output-directory %o %f"
        ;; "biber %b"
        "pdflatex -interaction nonstopmode -output-directory %o %f"
        "pdflatex -interaction nonstopmode -output-directory %o %f"))

      ;; '("xelatex -interaction nonstopmode -output-directory %o %f"
      ;; 	"bibtex %b"
      ;;   "xelatex -interaction nonstopmode -output-directory %o %f"
      ;;   "xelatex -interaction nonstopmode -output-directory %o %f")) ;; org v8

;; (setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f"))
;; }}

;; guard
(provide 'init-org-latex)
