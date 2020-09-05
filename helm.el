;;; package --- Helm
;;; Commentary:
;;; Helm
;;; Code:

(helm-mode 1)

;;; Keybinds

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x b") #'helm-buffers-list)
(global-set-key (kbd "M-w") 'helm-swoop)

;;; helm.el ends here
