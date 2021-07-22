;; {{ org-mode
(evil-define-key 'normal org-mode-map
  (kbd "<return>") '+org/dwim-at-point
  (kbd "C-<return>") 'org-meta-return)
;; (define-key org-mode-map (kbd "<normal-state> C-<return>") #'org-meta-return)
;; }}
;; guard
(provide 'init-evil-keybindings)
