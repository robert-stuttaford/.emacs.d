;;; package --- General
;;; Commentary:
;;; General
;;; Code:

;;; Switch off various annoying things

(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(setq visible-bell nil)
(setq ring-bell-function #'ignore)
(setq mouse-wheel-progressive-speed nil)
(global-unset-key (kbd "<C-wheel-down>"))
(global-unset-key (kbd "<C-wheel-up>"))
(global-unset-key (kbd "s-t"))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Allow paste to over-write selection
(delete-selection-mode 1)

;;; Configure Window

(menu-bar-mode t)
(setq frame-title-format
      (list '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;(setq split-height-threshold nil)
;(setq split-width-threshold 0)

(split-window-right)

(require 'powerline)
(powerline-center-theme)

(setq-default tab-width 2)
(fset 'yes-or-no-p 'y-or-n-p)

;;; Emacs Lisp

(add-hook 'emacs-lisp-mode-hook 'flycheck-mode)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

;;; Super Save

(super-save-mode +1)

;(global-display-line-numbers-mode)

(setq auto-save-default nil)

;;; Backups

(setq backup-directory-alist `(("." . "~/.emacs-saves")))

;;; Company

(global-company-mode)

(global-set-key [M-tab] 'company-complete)

;;; Code colouring / highlighting

(idle-highlight-mode t)
(global-color-identifiers-mode)

(show-paren-mode 1)

(setq-default blink-matching-paren nil
              show-paren-style 'parenthesis
              show-paren-delay 0)

;; magit-todos
(use-package magit-todos
  :after magit
  :config (magit-todos-mode 1))

;;; general.el ends here
