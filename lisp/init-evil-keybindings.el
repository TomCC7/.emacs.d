;; {{ org-mode
(define-key evil-normal-state-map (kbd "C-<return>") nil)
(evil-define-key 'normal org-mode-map
  (kbd "<return>") '+org/dwim-at-point
  (kbd "C-<return>") '+org/insert-item-below)
;; }}
;; guard
(provide 'init-evil-keybindings)
