;; {{ setq
;; Set citation path
(setq my-citation-dir '("/home/cc/Documents/bib/citation.bib"))
;; }}
;; {{ proxy
(setq my-http-proxy "http://127.0.0.1:8889")
(setenv "http_proxy" my-http-proxy)
(setenv "https_proxy" my-http-proxy)
;; }}

;; {{ PATH
(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' `exec-path' and PATH environment variable to match
that used by the user's shell.

This is particularly useful under Mac OS X and macOS, where GUI
apps are not started from a shell."
  (interactive)
  (let ((path-from-shell (replace-regexp-in-string
			  "[ \t\n]*$" "" (shell-command-to-string
					  "$SHELL --login -c 'echo $PATH'"
						    ))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
(set-exec-path-from-shell-PATH)
;; }}

(provide 'init-env)

