(global-set-key [f1] (lambda () (interactive) (find-file "~/Development/Server/dev/user.clj")))
(global-set-key [f2] (lambda () (interactive) (find-file "~/Development/C2/project.clj")))
(global-set-key [f3] (lambda () (interactive) (find-file "~/Development/Core/project.clj")))
(global-set-key [f4] (lambda () (interactive) (find-file "~/Development/Builder/project.clj")))

(global-set-key (kbd "<f5>") 'rgrep)

(global-set-key (kbd "<f6>") 'highlight-regexp)
(global-set-key (kbd "M-<f6>") 'unhighlight-regexp)

(global-set-key [f8] 'nrepl)
(global-set-key [f9] 'nrepl-jack-in)
(global-set-key (kbd "M-<f9>") 'nrepl-quit)

(global-set-key [f11] (lambda () (interactive) (find-file "~/.lein/profiles.clj")))
(global-set-key [f12] (lambda () (interactive) (find-file "~/.emacs.d/init.el")))
