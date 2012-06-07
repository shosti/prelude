(defun set-up-scss-mode ()
  (set-up-programming)
  (set-up-auto-indent))

(add-hook 'scss-mode-hook 'set-up-scss-mode)
