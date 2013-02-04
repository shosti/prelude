(require 'personal-packages)

(require 'yasnippet)

(setq yas-snippet-dirs (list (concat prelude-personal-dir "/snippets")))
(yas-reload-all)
(yas-global-mode 1)
