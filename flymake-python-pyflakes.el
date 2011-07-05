;;; A flymake handler for python-mode files using pyflakes as the backend checker
;;;
;;; Author: Steve Purcell
;;; Homepage: https://github.com/purcell/flymake-python-pyflakes
;;;
;;; Usage:
;;;   (require 'flymake-python-pyflakes)
;;;   (add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

(defvar flymake-python-pyflakes-allowed-file-name-masks '(("\\.py\\'" flymake-python-pyflakes-init)))
(defvar flymake-python-pyflakes-executable "pyflakes")

(defun flymake-python-pyflakes-init ()
  (list flymake-python-pyflakes-executable
        (list (file-relative-name
               (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace)
               (file-name-directory buffer-file-name)))))

(defun flymake-python-pyflakes-load ()
  (interactive)
  (set (make-local-variable 'flymake-allowed-file-name-masks)
       flymake-python-allowed-file-name-masks)
  (if (executable-find flymake-python-pyflakes-executable)
    (flymake-mode t)
    (message "not enabling flymake: pyflakes executable '%s' not found"
             flymake-python-pyflakes-executable)))


(provide 'flymake-python-pyflakes)
