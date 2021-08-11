(require 'init-packages)
;; cite: https://github.com/hick/emacs-chinese
;; {{ encoding
;; (set-language-environment "UTF-8")
;; (set-default-coding-systems 'utf-8)
;; (set-buffer-file-coding-system 'utf-8-unix)
;; (set-clipboard-coding-system 'utf-8-unix)
;; (set-file-name-coding-system 'utf-8-unix)
;; (set-keyboard-coding-system 'utf-8-unix)
;; (set-next-selection-coding-system 'utf-8-unix)
;; (set-selection-coding-system 'utf-8-unix)
;; (set-terminal-coding-system 'utf-8-unix)
;; (prefer-coding-system 'utf-8)
;; (setq-default locale-coding-system 'utf-8
;; 	      coding-system-for-read 'utf-8-unix
;; 	      coding-system-for-write 'utf-8-unix)
;; }}

;; {{ 解决中文断行问题
;;; 下面一段是 zwz 的, 作者声明只适应 org-mode 8.0 以及以上版本
(defun clear-single-linebreak-in-cjk-string (string)
  "clear single line-break between cjk characters that is usually soft line-breaks"
  (let* ((regexp "\\([\u4E00-\u9FA5]\\)\n\\([\u4E00-\u9FA5]\\)")
         (start (string-match regexp string)))
    (while start
      (setq string (replace-match "\\1\\2" nil nil string)
            start (string-match regexp string start))))
  string)

(defun ox-html-clear-single-linebreak-for-cjk (string backend info)
  (when (org-export-derived-backend-p backend 'html)
    (clear-single-linebreak-in-cjk-string string)))
;; }}

;; {{ calender
(setq chinese-calendar-celestial-stem
          ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"]
          chinese-calendar-terrestrial-branch
          ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])
;; }}

;; {{ 输入法
(use-package pyim
  :ensure nil
  :config
  (setq default-input-method "pyim") ;; default input method
  (use-package pyim-basedict
    :ensure nil
    :config (pyim-basedict-enable))
  ;; quanpin
  (setq pyim-default-scheme 'quanpin)
  (pyim-isearch-mode 1)
  (setq pyim-page-tooltip 'posframe)
  (setq pyim-page-length 5)
  ;; 金手指设置，可以将光标处的编码，比如：拼音字符串，转换为中文。
  (global-set-key (kbd "M-j") 'pyim-convert-string-at-point)
  ;; pyim 探针设置
  ;; 设置 pyim 探针设置，这是 pyim 高级功能设置，可以实现 *无痛* 中英文切换 :-)
  ;; 我自己使用的中英文动态切换规则是：
  ;; 1. 光标只有在注释里面时，才可以输入中文。
  ;; 2. 光标前是汉字字符时，才能输入中文。
  ;; 3. 使用 M-j 快捷键，强制将光标前的拼音字符串转换为中文。
  ;; (setq-default pyim-english-input-switch-functions
  ;; 		'(pyim-probe-dynamic-english
  ;; 		  pyim-probe-isearch-mode
  ;; 		  pyim-probe-program-mode
  ;; 		  pyim-probe-org-structure-template))
  ;; 半角标点
  (setq pyim-punctuation-translate-p '(no yes auto)))
;; }}
;; guard
(provide 'init-chinese)
