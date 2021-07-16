(require 'init-packages)
;; {{ misc
(add-hook 'org-mode-hook
	  (lambda ()
	    ;; auto fill mode
	    (turn-on-auto-fill)
	    ;; image preview
	    (setq org-image-actual-width (list 600))
))
;; }}

;; {{ org-bullets
(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
;; }}

;; {{ org-noter
(use-package org-noter
  :config
  (setq org-noter-always-create-frame nil))
;; }}

(require 'init-org-latex)
(provide 'init-org)
