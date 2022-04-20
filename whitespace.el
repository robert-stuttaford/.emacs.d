;;; package --- Whitespace
;;; Commentary:
;;; Whitespace
;;; Code:

(global-whitespace-mode)

(setq whitespace-line-column 154)
(setq whitespace-style '(face trailing tabs lines))

(defun cleanup-buffer ()
  (interactive)
  (whitespace-cleanup)
  (untabify (point-min) (point-max)))

(add-hook 'before-save-hook 'cleanup-buffer)

;;; whitespace.el ends here
