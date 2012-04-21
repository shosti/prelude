(require 'personal-packages)
(require 'parenface)

(defun set-up-lisp-coding ()
  (show-paren-mode 0)
  (highlight-parentheses-mode 1)
  (local-set-key (kbd "RET") 'paredit-newline))

(add-hook 'prelude-lisp-coding-hook 'set-up-lisp-coding t)

;; Add parenface to clojure
(add-hook 'clojure-mode-hook
          '(lambda ()
             (font-lock-add-keywords nil
                                     '(("(\\|)\\|\\[\\|\\]" . 'paren-face)))))
