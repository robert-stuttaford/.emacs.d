;;; package --- Magit
;;; Commentary:
;;; Magit
;;; Code:

(defun magit-commit-mode-init ()
  (when (looking-at "\n")
    (open-line 1)))

(add-hook 'git-commit-mode-hook 'magit-commit-mode-init)

(setq magit-show-long-lines-warning t)

;;; Keybinds

(global-set-key [f4] 'magit-status)

(with-eval-after-load 'magit
    ;; https://github.com/magit/magit/issues/5557
    (defalias 'magit--any 'cl-member-if))

;;; magit.el ends here
