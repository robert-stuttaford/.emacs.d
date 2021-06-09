;;; package --- Keybinds
;;; Commentary:
;;; Keybinds
;;; Code:

(global-set-key [f1] (lambda () (interactive) (find-file "~/Code/Cognician/Monolith/dev/scratch/robert.clj")))
(global-set-key [f2] (lambda () (interactive) (find-file "~/Code/Cognician/Base/deps.edn")))
(global-set-key [f3] (lambda () (interactive) (find-file "~/Code/Cognician/Tock/deps.edn")))
(global-set-key [M-f3] (lambda () (interactive) (find-file "~/Code/Cognician/Chat/deps.edn")))

(global-set-key [f12] (lambda () (interactive) (find-file "~/.emacs.d/init.el")))

;; Swap current buffer with buffer in direction of arrow
(global-set-key (kbd "<M-s-right>") 'buf-move-right)
(global-set-key (kbd "<M-s-left>") 'buf-move-left)
(global-set-key (kbd "<M-s-up>") 'buf-move-up)
(global-set-key (kbd "<M-s-down>") 'buf-move-down)

;; Move active cursor to window
(global-set-key [C-s-left] 'windmove-left)
(global-set-key [C-s-right] 'windmove-right)
(global-set-key [C-s-up] 'windmove-up)
(global-set-key [C-s-down] 'windmove-down)

;; Font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Use regex searches by default.
(global-set-key [f6] 'highlight-regexp)
(global-set-key [M-f6] 'unhighlight-regexp)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)

;;; keybinds.el ends here
