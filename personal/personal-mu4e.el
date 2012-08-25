(require 'personal-packages)

(add-to-list 'load-path
             "/usr/local/share/emacs/site-lisp/mu4e")
(require 'mu4e)

(setq mu4e-sent-folder "/Sent Messages"
      mu4e-drafts-folder "/[Gmail].Drafts"
      mu4e-trash-folder "/[Gmail].Trash"
      mu4e-get-mail-command "offlineimap"
      mu4e-sent-messages-behavior 'delete
      mu4e-maildir-shortcuts '(("/[Gmail].Important"   . ?i)
                               ("/[Gmail].Sent Mail"   . ?s)
                               ("/[Gmail].Trash"       . ?t)
                               ("/[Gmail].All Mail"    . ?a))
      user-mail-address "emanuel.evans@gmail.com"
      user-full-name "Emanuel Evans"
      message-send-mail-function 'message-send-mail-with-sendmail
      message-kill-buffer-on-exit t)

(global-set-key "\C-cm" 'mu4e)
