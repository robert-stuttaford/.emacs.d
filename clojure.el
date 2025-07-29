;;; package --- clojure-mode configuration
;;; Commentary:
;;; clojure-mode configuration
;;; Code:

(require 'clojure-mode)

(setq initial-major-mode 'clojure-mode)
(setq clojure-align-forms-automatically t)

(add-hook 'clojure-mode-hook 'flycheck-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'idle-highlight-mode)
(add-hook 'clojure-mode-hook 'lsp)

(add-hook 'clojurescript-mode-hook 'flycheck-mode)
(add-hook 'clojurescript-mode-hook 'paredit-mode)
(add-hook 'clojurescript-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojurescript-mode-hook 'idle-highlight-mode)
(add-hook 'clojurescript-mode-hook 'lsp)

(add-hook 'clojurec-mode-hook 'flycheck-mode)
(add-hook 'clojurec-mode-hook 'paredit-mode)
(add-hook 'clojurec-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojurec-mode-hook 'idle-highlight-mode)
(add-hook 'clojurec-mode-hook 'lsp)

(defun format-buffer-before-save-hook ()
  "Format buffer before save."
  (add-hook 'before-save-hook 'lsp-format-buffer nil 't))

;; (add-hook 'clojurescript-mode-hook 'format-buffer-before-save-hook)
;; (add-hook 'clojurec-mode-hook 'format-buffer-before-save-hook)
;; (add-hook 'clojure-mode-hook 'format-buffer-before-save-hook)

(add-to-list 'auto-mode-alist '("\\.carve\\'" . compilation-mode))

(defun cljr-mode-setup ()
  "Clj-refactor setup."
  (clj-refactor-mode 1)
  (cljr-add-keybindings-with-prefix "s-r"))

(setq cljr-insert-newline-after-require nil)

(add-hook 'clojure-mode-hook 'cljr-mode-setup)
(add-hook 'clojurec-mode-hook 'cljr-mode-setup)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      company-idle-delay 0.3
      company-minimum-prefix-length 3
      lsp-lens-enable nil
      lsp-signature-auto-activate nil)

(define-clojure-indent
  (add-watch 'defun)
  ;; compojure
  (context 'defun)
  (GET 'defun)
  (POST 'defun)
  ;; component
  (start 'defun)
  (stop 'defun)
  (init 'defun)
  (db 'defun)
  (conn 'defun)
  ;; datalog
  (and-join 'defun)
  (or-join 'defun)
  (not-join 'defun)
  ;; tufte
  (tufte/p 'defun)
  (tufte/profile 'defun)
  (tufte/profiled 'defun)
  (tufte/defnp 'defun)
  (tufte/fnp 'defun)
  ;; cognician - manage
  (admin-only! 'defun)
  (strata-only! 'defun)
  (system-engineer-only! 'defun)
  (group-editor-only! 'defun)
  (clear-learner-data-only! 'defun)
  ;; snitch
  (defn* 'defun)
  (defmethod* 'defun)
  (*fn 'defun)
  (*let 'defun)
  ;; uix
  (defui 'defun)
  ;; rum
  (rum/defc 'defun)
  (rum/defcs 'defun))

(require 'flycheck-clj-kondo)

(setq flycheck-clj-kondo-clj-executable "/opt/homebrew/bin/clj-kondo")
(setq flycheck-clj-kondo-cljc-executable "/opt/homebrew/bin/clj-kondo")
(setq flycheck-clj-kondo-cljs-executable "/opt/homebrew/bin/clj-kondo")
(setq flycheck-clj-kondo-edn-executable "/opt/homebrew/bin/clj-kondo")

(dolist (checker '(clj-kondo-clj clj-kondo-cljs clj-kondo-cljc clj-kondo-edn))
  (setq flycheck-checkers (cons checker (delq checker flycheck-checkers))))

(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;;; Keybinds

(setq lsp-keymap-prefix "s-l")

(global-set-key (kbd "M-{") 'flycheck-previous-error)
(global-set-key (kbd "M-}") 'flycheck-next-error)

(require 'align-cljlet)

(global-set-key (kbd "s-i") 'align-cljlet)

(global-set-key (kbd "M-q") 'lsp-format-buffer)

;;; clojure.el ends here

