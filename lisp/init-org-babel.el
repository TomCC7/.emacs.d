;; active Babel languages
;; https://orgmode.org/worg/org-contrib/babel/languages/index.html
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (latex . t)
   (shell . t)
   (python . t)))
;; guard
(provide 'init-org-babel)
