;;; -*- lexical-binding: t; -*-
;;; package --- Helm
;;; Commentary:
;;; Helm
;;; Code:

(autoload 'helm-mode "helm-mode" nil t)
(autoload 'helm-M-x "helm-command" nil t)
(autoload 'helm-buffers-list "helm-buffers" nil t)
(autoload 'helm-swoop "helm-swoop" nil t)

(helm-mode 1)

;;; Keybinds

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x b") #'helm-buffers-list)
(global-set-key (kbd "M-w") 'helm-swoop)

;;; helm.el ends here
