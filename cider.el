;;; -*- lexical-binding: t; -*-
;;; package --- CIDER configuration
;;; Commentary:
;;; CIDER configuration
;;; Code:

(require 'cider)
(require 'cider-eval-sexp-fu)

(setq cider-font-lock-reader-conditionals nil)
(setq cider-test-show-report-on-success nil)
(setq cider-repl-use-pretty-printing t)
(setq cider-repl-display-help-banner nil)
(setq cider-save-file-on-load nil)
(setq cider-print-options '(("right-margin" 122)))

(setq
   cider-repl-pop-to-buffer-on-connect nil
   cider-repl-use-clojure-font-lock t
   cider-font-lock-dynamically t
   nrepl-log-messages nil
   cider-redirect-server-output-to-repl t)

(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(add-to-list 'same-window-buffer-names "*cider")

(cider-auto-test-mode 1)

(setq cljr-favor-prefix-notation nil)
(setq cljr-favor-private-functions nil)

(require 'lsp)

(setq lsp-log-max t)

(setq lsp-idle-delay 0)

(defun find-definition ()
  "Try to find definition of cursor via LSP otherwise fallback to cider."
  (interactive)
  (let ((cursor (point))
        (buffer (current-buffer)))
    (lsp-find-definition)
    (when (and (eq buffer (current-buffer))
               (eq cursor (point)))
      (cider-find-var))))

(define-key clojure-mode-map (kbd "M-.") #'find-definition)
(define-key cider-mode-map (kbd "M-.") #'find-definition)
(define-key clojurec-mode-map (kbd "M-.") #'find-definition)
(define-key clojurescript-mode-map (kbd "M-.") #'find-definition)

(global-set-key [f7]
                (lambda ()
                  (interactive)
                  (cider-eval-print-last-sexp 't)))

;;; Keybinds

(global-set-key [f8] 'cider-connect)
(global-set-key [M-f8] 'cider-quit)

(global-set-key [C-M-f8]
                (lambda () (interactive)
                  (cider-connect '(:host "localhost" :port 7888))))

(defun cognician-connect (&optional cljs)
  "Connect to the current project's nREPL, including CLJS when CLJS is non-nil."
  (interactive)
  (let* ((root (clojure-project-dir))
         (port (with-temp-buffer
                 (insert-file-contents (expand-file-name ".nrepl-port" root))
                 (string-to-number (buffer-string))))
         (params (list :project-dir root :host "localhost" :port port)))
    (if cljs
        (cider-connect-clj&cljs (plist-put params :cljs-repl-type 'shadow))
      (cider-connect params))))

(global-set-key [C-S-f9]
                (lambda () (interactive)
                  (cognician-connect t)))

(global-set-key [C-S-f8] 'cognician-connect)

(global-set-key [M-f1] 'cider-repl-clear-buffer)

(global-set-key (kbd "s-T") 'cider-test-run-test)

(global-set-key [M-S-f3] 'cider-format-edn-region)

;;; restart-cognician-system

(defun restart-cognician-system ()
  (interactive)
  (save-buffer)
  (let ((filename
         (buffer-file-name)))
    (when filename
      (cider-interactive-eval
       "(when-some [restart-fn (try
                           (require 'repl.local)
                           (find-var 'repl.local/restart-local-systems!)
                           (catch Throwable e
                             (require 'cognician.system)
                             (find-var 'cognician.system/restart-systems!)))]
    (restart-fn)
:cognician/system-restarted)"))))

(define-key clojure-mode-map (kbd "<M-return>") 'restart-cognician-system)

;;; cider.el ends here
