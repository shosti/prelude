(require 'personal-packages)
(require 'personal-eshell)

(setq custom-theme-directory (concat prelude-personal-dir "themes/"))
(load-theme 'tomorrow-night)

(server-start)
(eshell)
