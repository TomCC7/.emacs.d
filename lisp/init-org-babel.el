(setq org-src-preserve-indentation t  ; use native major-mode indentation
      org-src-tab-acts-natively t
      ;; You don't need my permission (just be careful, mkay?)
      org-confirm-babel-evaluate nil
      org-link-elisp-confirm-function nil
      ;; Show src buffer in popup, and don't monopolize the frame
      org-src-window-setup 'other-window)
;; active Babel languages
;; https://orgmode.org/worg/org-contrib/babel/languages/index.html
(org-babel-do-load-languages
 'org-babel-load-languages
 '((latex . t)
   (shell . t)
   (python . t)
   (ein . t)
   (haskell . t)
   (ledger . t)
   (lisp . t)))
;; guard
(provide 'init-org-babel)
