(require 'init-packages)
;; {{ org-bullets
(use-package org-bullets
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
;; }}

;; {{ org-noter
(use-package org-noter)
(setq org-noter-always-create-frame nil)
;; }}
(provide 'init-org)
