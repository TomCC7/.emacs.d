(use-package evil-leader
  :config
  ;; rebind leader key
  (evil-leader/set-leader "<SPC>")
  ;; set keys
  (evil-leader/set-key
    ;; switch group
    "g" 'counsel-git-grep
    ;; config
    "c" 'my-find-config
    ;; kill buffer
    "d" 'kill-this-buffer
    ;; list buffers
    "b" 'ibuffer
    ;; jump or set bookmark
    "RET" 'bookmark-jump
    ;; file jump
    "<SPC>" 'counsel-file-jump
    ;; find file
    "e" 'counsel-find-file
    ;; grep
    "f" 'counsel
    ;; bookmarks
    "m d" 'bookmark-delete
    "m j" 'bookmark-jump
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
    "TAB h" 'centaur-tabs-backward
    "TAB l" 'centaur-tabs-forward
    "TAB d" 'kill-this-buffer
)
  ;; enable
  (global-evil-leader-mode))
;; guard
(provide 'init-evil-leader)
