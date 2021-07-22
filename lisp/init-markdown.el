(require 'init-packages)
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))
(defun my/markdown-convert-buffer-to-org ()
  "Convert the current buffer's content from markdown to orgmode format and save it with the current buffer's file name but with .org extension."
  (interactive)
  (shell-command-on-region (point-min) (point-max)
			   (format "pandoc -f markdown -t org -o %s"
				   (concat (file-name-sans-extension (buffer-file-name)) ".org"))))
;; {{ evil-leader
(evil-leader/set-key-for-mode 'markdown-mode
  "c c" #'my/markdown-convert-buffer-to-org)
;; }}

;; guard
(provide 'init-markdown)
