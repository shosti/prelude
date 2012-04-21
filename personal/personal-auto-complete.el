(require 'personal-packages)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/vendor/auto-complete/ac-dict")
(ac-config-default)

(setq ac-use-fuzzy t)
(setq ac-use-menu-map t)
(ac-flyspell-workaround)
;; (setq-default ac-sources
;;               '(ac-source-yasnippet
;;                 ac-source-words-in-buffer
;;                 ac-source-abbrev
;;                 ac-source-dictionary
;;                 ac-source-words-in-same-mode-buffers
;;                 ac-source-filename))
