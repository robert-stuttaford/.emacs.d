;;; package --- Custom
;;; Commentary:
;;; Custom
;;; Code:

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(leuven-theme all-the-icons doom-themes super-save rainbow-delimiters popup magit lsp-treemacs idle-highlight-mode html-to-hiccup highlight git-link flycheck-clj-kondo flx exec-path-from-shell counsel-projectile company color-identifiers-mode clj-refactor cider-eval-sexp-fu centaur-tabs buffer-move align-cljlet))
 '(safe-local-variable-values
   '((cider-ns-refresh-after-fn . "dev/start")
     (cider-ns-refresh-before-fn . "dev/stop")
     (cider-ns-refresh-after-fn . "cognician.server-daemon/start-web")
     (cider-ns-refresh-before-fn . "cognician.server-daemon/stop-web"))))

;;; custom.el ends here
