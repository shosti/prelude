(require 'personal-packages)
(require 'clojure-mode)

(defun open-clojure-docs ()
  (interactive)
  (browse-url "http://clojure.github.com"))

(define-key clojure-mode-map "\C-c\C-dr" 'open-clojure-docs)

;; (add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
;; (add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
;; (eval-after-load "auto-complete"
;;   '(add-to-list 'ac-modes 'nrepl-mode))
