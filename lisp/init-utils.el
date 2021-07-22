(require 'init-packages)
;; {{ PDF
;; pdf-tools
(use-package pdf-tools
  :config
  (pdf-tools-install-noverify)

  (setq-default pdf-view-display-size 'fit-page)
  ;; Enable hiDPI support, but at the cost of memory! See politza/pdf-tools#51
  (setq pdf-view-use-scaling t
        pdf-view-use-imagemagick nil))

(use-package saveplace-pdf-view)
;; }}

;; {{ wakatime
(use-package wakatime-mode
  :config
  (global-wakatime-mode))
;; }}

;; {{ shell
;; vterm
(use-package vterm)
;; }}

(provide 'init-utils)
