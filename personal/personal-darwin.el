(require 'personal-packages)

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'none)
(define-key global-map [ns-drag-file] 'ns-find-file)
(setq ns-pop-up-frames nil)

(defvar locate-dirs
  '("~/.emacs.d" "~/src" "~/org" "~/Dropbox/src"))

(setq helm-c-locate-command
      (mapconcat 'identity
                 (cons "mdfind -name %s"
                       locate-dirs)
                 " -onlyin "))
