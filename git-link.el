;;; package --- Git Link
;;; Commentary:
;;; Git Link
;;; Code:

(require 'git-link)

(setq git-link-open-in-browser t)

;;; Keybinds

(global-set-key (kbd "C-M-g") 'git-link)

;;; git-link.el ends here
