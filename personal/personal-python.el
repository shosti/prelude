(require 'personal-packages)

(defun set-up-python-mode ()
  (local-set-key (kbd "RET") 'newline-and-indent))

(add-hook 'python-mode-hook
          'set-up-python-mode)
