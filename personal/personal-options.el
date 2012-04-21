(require 'personal-packages)

;; I like my arrow keys occasionally!
(prelude-restore-arrow-keys)

(setq visible-bell t)
(setq disabled-command-function nil)

(setq dired-use-ls-dired nil)

;;editing
(global-subword-mode 1)

;;backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;;file
(setq delete-by-moving-to-trash t)

(path-from-file "~/.path")

(setq comint-scroll-to-bottom-on-output t)
(setq-default major-mode 'text-mode)

;;recompile modules directory
(add-hook 'kill-emacs-hook
          (lambda ()
            (byte-recompile-directory prelude-modules-dir)))
