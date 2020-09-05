;;; package --- HideShow
;;; Commentary:
;;; HideShow
;;; Code:

(add-hook 'prog-mode-hook 'hs-minor-mode)

(setq hs-hide-comments-when-hiding-all nil)

;;; Keybinds

(global-set-key (kbd "C-.") 'hs-toggle-hiding)
(global-set-key (kbd "C-,") 'hs-hide-all)
(global-set-key (kbd "C-x C-,") 'hs-show-all)

;;; hideshow.el ends here
