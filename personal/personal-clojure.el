(require 'personal-packages)
(require 'clojure-mode)

(defun open-clojure-docs ()
  (interactive)
  (browse-url "http://clojure.github.com"))


(define-key clojure-mode-map "\C-c\C-dr" 'open-clojure-docs)
