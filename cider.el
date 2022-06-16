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
(setq cider-buffer-name-show-port t)
(setq cider-print-options '(("right-margin" 122)))
(setq cider-show-error-buffer t)

(setq cider-redirect-server-output-to-repl nil)

(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(add-to-list 'same-window-buffer-names "*cider")

(setq cljr-favor-prefix-notation nil)
(setq cljr-favor-private-functions nil)

;;; Keybinds

(global-set-key [f8] 'cider-connect)
(global-set-key [M-f8] 'cider-quit)

(global-set-key [C-M-f8]
                (lambda () (interactive)
                  (cider-connect '(:host "localhost" :port 7888))))

(global-set-key [C-S-f9]
                (lambda () (interactive)
                  ;(setq cider-shadow-default-options "tools")
                  (cider-connect-clj&cljs
                   (plist-put '(:host "localhost" :cljs-repl-type shadow)
                              :port (cl-second (cl-first (cider-locate-running-nrepl-ports)))))))

(global-set-key [C-S-f8]
                (lambda () (interactive)
                  (cider-connect
                   (plist-put '(:host "localhost")
                              :port (cl-second (cl-first (cider-locate-running-nrepl-ports)))))))

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
