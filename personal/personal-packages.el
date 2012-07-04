(require 'personal-functions)

(defvar personal-prelude-modules
  '(prelude-c prelude-clojure prelude-common-lisp prelude-emacs-lisp
              prelude-haskell prelude-js prelude-latex prelude-lisp
              prelude-programming prelude-ruby prelude-scheme prelude-xml
              prelude-coffee))

(defvar personal-packages
  (append personal-prelude-modules
          '(ac-slime ace-jump-mode ascope auto-complete bitlbee buffer-move
                     elscreen gnuplot google-c-style highlight-parentheses
                     js-comint parenface pretty-mode smex undo-tree
                     c-eldoc elisp-slime-nav coffee-mode python mark-multiple
                     yaml-mode))
  "A list of packages to ensure are installed at launch.")

(defun personal-packages-installed-p ()
  (loop for p in personal-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (personal-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p personal-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(mapc 'require personal-prelude-modules)

(provide 'personal-packages)
