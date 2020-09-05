;;; package --- Centaur Tabs
;;; Commentary:
;;; Centaur Tabs
;;; Code:

(require 'centaur-tabs)
(centaur-tabs-mode t)

;;; Keybinds

(global-set-key (kbd "s-[")  'centaur-tabs-backward)
(global-set-key (kbd "s-]") 'centaur-tabs-forward)

;;; centaur-tabs.el ends here
