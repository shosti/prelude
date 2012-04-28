(require 'personal-packages)

(defun set-up-python-mode ()
  (run-hooks 'prelude-prog-mode-hook)
  (local-set-key (kbd "RET") 'my-py-newline-and-indent))

(add-hook 'python-mode-hook 'set-up-python-mode)

(defun my-py-newline-and-indent ()
  (interactive)
  (if (bolp)
      (newline)
    (newline-and-indent)))
