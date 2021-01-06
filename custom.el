;;; package --- Custom
;;; Commentary:
;;; Custom
;;; Code:

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(idle-highlight ((t (:inherit region :background "VioletRed3")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lsp-mode flx counsel-projectile exec-path-from-shell super-save highlight buffer-move git-link magit centaur-tabs powerline counsel projectile popup company color-identifiers-mode idle-highlight-mode rainbow-delimiters flycheck-clj-kondo html-to-hiccup cider-eval-sexp-fu align-cljlet clj-refactor cider clojure-mode))
 '(safe-local-variable-values
   '((cider-ns-refresh-after-fn . "dev/start")
     (cider-ns-refresh-before-fn . "dev/stop")
     (cider-ns-refresh-after-fn . "cognician.server-daemon/start-web")
     (cider-ns-refresh-before-fn . "cognician.server-daemon/stop-web"))))

;;; custom.el ends here
