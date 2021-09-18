(use-package elpy
  :config
  ;; run command `pip install jedi flake8 importmagic` in shell,
  ;; or just check https://github.com/jorgenschaefer/elpy
  (setq elpy-shell-command-prefix-key "C-c C-f")
  ;; If you don't like any hint or error report from elpy,
  ;; set `elpy-disable-backend-error-display' to t.
  (setq elpy-disable-backend-error-display nil)
  ;; http://emacs.stackexchange.com/questions/3322/python-auto-indent-problem/3338#3338
  ;; emacs 24.4+
  (setq electric-indent-chars (delq ?: electric-indent-chars))
  ;; jupyter
  (setq python-shell-interpreter "jupyter"
	python-shell-interpreter-args "console --simple-prompt"
	python-shell-prompt-detect-failure-warning nil)
  (add-to-list 'python-shell-completion-native-disabled-interpreters
	       "jupyter")
  (elpy-enable)
  ;; evil-map
  (defun elpy-evil-map ()
    (define-key evil-normal-state-map "gd" #'elpy-goto-definition)
    (define-key evil-normal-state-map "gD" #'elpy-goto-assignment))
  ;; maybe already implemented?
  ;; :hook
  ;; (python-mode . elpy-evil-map)
)

(use-package ein
  :config
  (add-to-list 'org-babel-load-languages '(ein . t)))


;; guard
(provide 'init-prog-python)
