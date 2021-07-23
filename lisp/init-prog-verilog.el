(use-package verilog-mode)
;; evil-leader
(evil-leader/set-key-for-mode 'verilog-mode
  "c a" #'verilog-inject-auto)
(provide 'init-prog-verilog)
