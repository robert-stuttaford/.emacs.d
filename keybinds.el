(global-set-key [f1] (lambda () (interactive) (find-file "~/Cognician/Server/dev/user.clj")))
(global-set-key [f2] (lambda () (interactive) (find-file "~/Cognician/Hex/dev/user.clj")))
(global-set-key [f3] (lambda () (interactive) (find-file "~/Cognician/Highstorm/dev/user.clj")))
(global-set-key [f4] (lambda () (interactive) (find-file "~/Cognician/C3/build.boot")))

(global-set-key (kbd "M-<f1>") (lambda () (interactive) (find-file "~/Cognician/Spren/dev/user.clj")))
(global-set-key (kbd "M-<f2>") (lambda () (interactive) (find-file "~/Cognician/Hex/dev/dev.clj")))

(global-set-key (kbd "<f5>") 'rgrep)

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
