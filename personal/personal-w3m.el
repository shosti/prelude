(require 'personal-packages)

(add-to-list 'load-path (concat prelude-vendor-dir "emacs-w3m"))
(require 'w3m-load)
(setq w3m-key-binding 'info)
(setq w3m-default-display-inline-images t)
(setq w3m-use-cookies t)
(setq w3m-command "/usr/local/bin/w3m")
