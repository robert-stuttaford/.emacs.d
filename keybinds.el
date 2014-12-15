(global-set-key [f1] (lambda () (interactive) (find-file "~/Development/Server/dev/user.clj")))
(global-set-key [f2] (lambda () (interactive) (find-file "~/Development/C2/project.clj")))
(global-set-key [f3] (lambda () (interactive) (find-file "~/Development/Core/project.clj")))
(global-set-key [f4] (lambda () (interactive) (find-file "~/Development/Elf/project.clj")))

(global-set-key (kbd "M-<f1>") (lambda () (interactive) (find-file "~/Development/Sphinx/dev/user.clj")))
(global-set-key (kbd "M-<f2>") (lambda () (interactive) (find-file "~/Development/Cogbot/dev/user.clj")))
(global-set-key (kbd "M-<f3>") (lambda () (interactive) (find-file "~/Development/Builder/project.clj")))
(global-set-key (kbd "M-<f4>") (lambda () (interactive) (find-file "~/Development/Spren/project.clj")))

(global-set-key (kbd "M-s-<f1>") (lambda () (interactive) (find-file "~/Development/Hex/dev/user.clj")))
(global-set-key (kbd "M-s-<f2>") (lambda () (interactive) (find-file "~/Development/dive-into-datomic/dev/user.clj")))
(global-set-key (kbd "M-s-<f3>") (lambda () (interactive) (find-file "~/Development/Highstorm/dev/user.clj")))
(global-set-key (kbd "M-s-<f4>") (lambda () (interactive) (find-file "~/Development/stuttaford.me/dev/user.clj")))

(global-set-key (kbd "<f5>") 'rgrep)

(global-set-key (kbd "<f6>") 'highlight-regexp)
(global-set-key (kbd "M-<f6>") 'unhighlight-regexp)

(global-set-key [f8] 'cider-connect)
(global-set-key (kbd "M-<f8>") 'cider-quit)

(global-set-key [f11] (lambda () (interactive) (find-file "~/.lein/profiles.clj")))
(global-set-key [f12] (lambda () (interactive) (find-file "~/.emacs.d/init.el")))

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
