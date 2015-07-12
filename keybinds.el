(global-set-key [f1] (lambda () (interactive) (find-file "~/Cognician/Server/dev/user.clj")))
(global-set-key [f2] (lambda () (interactive) (find-file "~/Cognician/Hex/dev/user.clj")))
(global-set-key [f3] (lambda () (interactive) (find-file "~/Cognician/Highstorm/dev/user.clj")))
(global-set-key [f4] (lambda () (interactive) (find-file "~/Cognician/C3/build.boot")))

(global-set-key (kbd "M-<f1>") (lambda () (interactive) (find-file "~/Cognician/Spren/dev/user.clj")))
(global-set-key (kbd "M-<f2>") (lambda () (interactive) (find-file "~/Cognician/Hex/dev/dev.clj")))
(global-set-key (kbd "M-<f3>") (lambda () (interactive) (find-file "~/Cognician/C2/project.clj")))
(global-set-key (kbd "M-<f4>") (lambda () (interactive) (find-file "~/Cognician/Core/project.clj")))
(global-set-key (kbd "M-<f5>") (lambda () (interactive) (find-file "~/Cognician/Resources/project.clj")))
(global-set-key (kbd "M-<f6>") (lambda () (interactive) (find-file "~/Cognician/shard/circle.yml")))

(global-set-key (kbd "<f6>") 'highlight-regexp)
(global-set-key (kbd "M-<f6>") 'unhighlight-regexp)

(global-set-key [f8] 'cider-connect)
(global-set-key (kbd "M-<f8>") 'cider-quit)

(global-set-key [f11] (lambda () (interactive) (find-file "~/.lein/profiles.clj")))
(global-set-key [f12] (lambda () (interactive) (find-file "~/.emacs.d/init.el")))
(global-set-key (kbd "M-<f12>") (lambda () (interactive) (find-file "~/.emacs.d/keybinds.el")))

(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)

(defun find-project-file (file)
  (find-file (expand-file-name file (projectile-project-root))))

(global-set-key [f9]
                (lambda () (interactive)
                  (find-project-file "dev/user.clj")))

(global-set-key [f10]
                (lambda () (interactive)
                  (find-project-file "project.clj")))

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(setq show-paren-style 'expression)

(global-set-key (kbd "C-.") 'hs-toggle-hiding)
(global-set-key (kbd "C-,") 'hs-hide-all)
(global-set-key (kbd "C-x C-,") 'hs-show-all)

;; Swap current buffer with buffer in direction of arrow
(global-set-key (kbd "<M-s-right>") 'buf-move-right)
(global-set-key (kbd "<M-s-left>") 'buf-move-left)
(global-set-key (kbd "<M-s-up>") 'buf-move-up)
(global-set-key (kbd "<M-s-down>") 'buf-move-down)

;; Window movement
(global-set-key [s-left] 'windmove-left)
(global-set-key [s-right] 'windmove-right)
(global-set-key [s-up] 'windmove-up)
(global-set-key [s-down] 'windmove-down)

(defun cider-repl-reset ()
  (interactive)
  (save-some-buffers)
  (with-current-buffer (cider-current-repl-buffer)
    (goto-char (point-max))
    (insert "(user/reset)")
    (cider-repl-return)))

(global-set-key (kbd "C-c r") 'cider-repl-reset)

(defun cider-repl-dev-reset ()
  (interactive)
  (save-some-buffers)
  (with-current-buffer (cider-current-repl-buffer)
    (goto-char (point-max))
    (insert "(user/dev-reset)")
    (cider-repl-return)))

(global-set-key (kbd "C-c R") 'cider-repl-dev-reset)

(defun cider-class-path ()
  (interactive)
  (with-current-buffer (cider-current-repl-buffer)
    (goto-char (point-max))
    (insert "(pprint (sort (.split (System/getProperty \\\"java.class.path\\\") \\\":\\\")))")
    (cider-repl-return)))

(global-set-key (kbd "C-c P") 'cider-class-path)

(require 'git-link)

(global-set-key (kbd "C-M-g") 'git-link)

(defun pnh-cleanup-buffer ()
  (interactive)
  (delete-trailing-whitespace)
  (untabify (point-min) (point-max))
  (indent-region (point-min) (point-max)))

(global-set-key (kbd "C-c n") 'pnh-cleanup-buffer)

(global-set-key (kbd "M-p") 'avy-goto-char-2)

(require 'paxedit)
(eval-after-load "paxedit"
  '(progn
     (define-key paxedit-mode-map (kbd "C-M-<right>") 'paxedit-transpose-forward)
     (define-key paxedit-mode-map (kbd "C-M-<left>") 'paxedit-transpose-backward)
     (define-key paxedit-mode-map (kbd "C-M-<up>") 'paxedit-backward-up)
     (define-key paxedit-mode-map (kbd "C-M-<down>") 'paxedit-backward-end)
     (define-key paxedit-mode-map (kbd "M-b") 'paxedit-previous-symbol)
     (define-key paxedit-mode-map (kbd "M-f") 'paxedit-next-symbol)
     (define-key paxedit-mode-map (kbd "C-%") 'paxedit-copy)
     (define-key paxedit-mode-map (kbd "C-&") 'paxedit-kill)
     (define-key paxedit-mode-map (kbd "C-*") 'paxedit-delete)
     (define-key paxedit-mode-map (kbd "C-^") 'paxedit-sexp-raise)
     (define-key paxedit-mode-map (kbd "M-u") 'paxedit-symbol-change-case)
     (define-key paxedit-mode-map (kbd "C-@") 'paxedit-symbol-copy)
     (define-key paxedit-mode-map (kbd "C-#") 'paxedit-symbol-kill)))


(require 'align-cljlet)

(global-set-key (kbd "s-i") 'align-cljlet)

(global-set-key [M-tab] 'company-complete)
(global-set-key (kbd "TAB") #'company-indent-or-complete-common)


;; Font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Use regex searches by default.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "\C-r") 'isearch-backward-regexp)
(global-set-key (kbd "M-%") 'query-replace-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key (kbd "C-M-%") 'query-replace)
