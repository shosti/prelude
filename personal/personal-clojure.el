(require 'personal-packages)
(require 'clojure-mode)

(defun open-clojure-docs ()
  (interactive)
  (browse-url "http://clojure.github.com"))

(define-key clojure-mode-map "\C-c\C-dr" 'open-clojure-docs)

(defun set-up-clojure-mode ()
  (clojure-jack-in))

(add-hook 'clojure-mode-hook
          'set-up-clojure-mode)
