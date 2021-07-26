(use-package evil-leader
  :config
  ;; rebind leader key
  (evil-leader/set-leader "<SPC>")
  ;; set keys
  (evil-leader/set-key
    ;; switch group
    "g" 'counsel-git-grep
    ;; list buffers
    "b" 'ibuffer
    ;; jump or set bookmark
    "RET" 'bookmark-jump
    ;; file jump
    "<SPC>" 'my/counsel-file-jump
    ;; find file
    "e" 'counsel-find-file
    ;; ranger
    "r" 'ranger
    ;; swiper
    "s" 'swiper
    ;; Meta-x
    ":" 'amx
    ;; neotree
    "t" 'neotree-toggle
    ;; files
    "f c" 'my/find-config
    "f k" 'kill-this-buffer
    "f r" 'counsel-recentf
    ;; utils
    "u d" 'docker
    ;; bookmarks
    "m d" 'bookmark-delete
    "m j" 'bookmark-jump
    ;; help
    "h k" 'helpful-key
    "h v" 'helpful-variable
    "h f" 'helpful-function
    ;; w
    "w s" 'evil-window-split
    "w v" 'evil-window-vsplit
    "w w" 'evil-window-next
    "w W" 'evil-window-prev
    "w n" 'evil-window-new
    "w o" 'delete-other-windows
    "w =" 'balance-windows
    "w H" 'evil-window-move-far-left
    "w L" 'evil-window-move-far-right
    "w J" 'evil-window-move-very-bottom
    "w j" 'evil-window-down
    "w k" 'evil-window-up
    "w h" 'evil-window-left
    "w l" 'evil-window-right
    ;; tab
    "TAB h" 'tab-previous
    "TAB l" 'tab-next
    "TAB n" 'tab-new
    "TAB d" 'tab-close
    "TAB r" 'tab-rename
    "TAB s" 'tab-list
    ;; org-roam
    "n l" 'org-roam-buffer-toggle
    "n f" 'org-roam-node-find
    "n g" 'org-roam-graph
    "n i" 'org-roam-node-insert
    "n c" 'org-roam-capture
    "n j" 'org-roam-dailies-capture-today)
  ;; enable
  (global-evil-leader-mode))
;; guard
(provide 'init-evil-leader)
