(require 'personal-packages)

(require 'yasnippet)

(setq yas/snippet-dirs (list (concat prelude-personal-dir "snippets")))
;; Play nice with auto-complete
(setq yas/trigger-key "\C-m")
(yas/reload-all)
