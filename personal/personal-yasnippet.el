(require 'personal-packages)

(require 'yasnippet)

(setq yas/snippet-dirs (list (concat prelude-personal-dir "snippets")))
(yas/reload-all)
;; Play nice with auto-complete
(setq yas/trigger-key "\C-m")
