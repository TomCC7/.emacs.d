(use-package elpy)
(with-eval-after-load 'python
  ;; run command `pip install jedi flake8 importmagic` in shell,
  ;; or just check https://github.com/jorgenschaefer/elpy
    ;; embed python code in org file
    (setq elpy-shell-command-prefix-key "C-c C-f")
    (elpy-enable)
    ;; If you don't like any hint or error report from elpy,
    ;; set `elpy-disable-backend-error-display' to t.
    (setq elpy-disable-backend-error-display t)
  ;; http://emacs.stackexchange.com/questions/3322/python-auto-indent-problem/3338#3338
  ;; emacs 24.4+
  (setq electric-indent-chars (delq ?: electric-indent-chars)))

(provide 'init-prog-python)
