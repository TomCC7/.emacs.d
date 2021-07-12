;; close tool bar
(tool-bar-mode -1)
;; clsoe scroll bar
(scroll-bar-mode -1)

;; line number
(global-linum-mode 1)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq cursor-type 'bar)

;; close help
(setq inhibit-splash-screen 1)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 150)

;; disable auto backup
(setq make-backup-files nil)

(provide 'init-config)
