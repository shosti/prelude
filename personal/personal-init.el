(require 'personal-packages)

(setq custom-theme-directory (concat prelude-personal-dir "themes/"))
(load-theme 'tomorrow-night)

(server-start)
(eshell)
