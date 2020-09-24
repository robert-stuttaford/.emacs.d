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

(add-hook 'clojure-mode-hook
          (lambda ()
            (clj-refactor-mode 1)
            (cljr-add-keybindings-with-prefix "s-r")))

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
  ;;re-frame
  (rf/reg-event-db 'defun)
  (rf/reg-event-fx 'defun)
  (rf/reg-sub 'defun)
  (rf/reg-fx 'defun)
  ;; cognician - manage
  (admin-only! 'defun)
  (group-editor-only! 'defun)
  ;; guardrails
  (>def 'defun)
  (>defn 'defun))

(require 'flycheck-clj-kondo)

(setq flycheck-clj-kondo-clj-executable "/usr/local/bin/clj-kondo")
(setq flycheck-clj-kondo-cljc-executable "/usr/local/bin/clj-kondo")
(setq flycheck-clj-kondo-cljs-executable "/usr/local/bin/clj-kondo")
(setq flycheck-clj-kondo-edn-executable "/usr/local/bin/clj-kondo")

(dolist (checker '(clj-kondo-clj clj-kondo-cljs clj-kondo-cljc clj-kondo-edn))
  (setq flycheck-checkers (cons checker (delq checker flycheck-checkers))))

;;; Keybinds

(require 'align-cljlet)

(global-set-key (kbd "s-i") 'align-cljlet)

;;; clojure.el ends here
