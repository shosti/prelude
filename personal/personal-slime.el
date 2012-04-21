(require 'personal-packages)

(setq slime-default-lisp 'sbcl)

(add-hook 'slime-mode-hook 'set-up-slime-ac)
