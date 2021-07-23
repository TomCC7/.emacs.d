;; DEPRECATED FILE
;; Use original workspace instead
;; {{ centaur-tabs
(use-package centaur-tabs
  :demand
  :config
  ;; font family and height
  (setq centaur-tabs-height 32) ;; effective > fontheihgt
  ;; style
  (setq centaur-tabs-style "bar")
  ;; icons
  (setq centaur-tabs-set-icons nil)
  (setq centaur-tabs-gray-out-icons 'buffer)
  (setq centaur-tabs-plain-icons nil)
  ;; focus
  (setq centaur-tabs-set-bar 'left)
  ;; close button
  (setq centaur-tabs-set-close-button nil)
  ;; modified marker
  (setq centaur-tabs-set-modified-marker t)
  ;; tab switch
  (setq centaur-tabs-cycle-scope 'tabs)
  ;; new tab button
  (setq centaur-tabs-show-new-tab-button nil)
  ;; fixed tab length
  (setq centaur-tabs-label-fixed-length 8)
  ;; enable
  (centaur-tabs-mode t)
  :bind
  (:map evil-normal-state-map
	("g t" . centaur-tabs-forward)
	("g T" . centaur-tabs-backward)
	("g G" . centaur-tabs-counsel-switch-group))
  :hook
  (dired-mode . centaur-tabs-local-mode)
)
;; }}

;; guard
(provide 'init-enhancements-tabs)
