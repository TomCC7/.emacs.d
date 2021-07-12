(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
     ("http" . my-http-proxy)
     ("https" . my-http-proxy)))
(provide 'init-proxy)
