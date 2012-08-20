(require 'personal-functions)

(defvar personal-prelude-modules
  '(prelude-c
    prelude-clojure
    prelude-coffee
    prelude-common-lisp
    prelude-emacs-lisp
    prelude-haskell
    prelude-js
    prelude-latex
    prelude-lisp
    prelude-programming
    prelude-ruby
    prelude-scheme
    prelude-xml))

(defvar personal-packages
  (append personal-prelude-modules
          '(ac-slime
            ace-jump-mode
            ascope
            auto-complete
            bitlbee
            buffer-move
            c-eldoc
            coffee-mode
            elisp-slime-nav
            elscreen
            gnuplot
            google-c-style
            highlight-parentheses
            jinja2-mode
            js-comint
            mark-multiple
            parenface
            pretty-mode
            python
            smex
            undo-tree
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
