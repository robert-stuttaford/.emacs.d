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
 '(cljr-insert-newline-after-require nil)
 '(package-selected-packages '(clojure-mode))
 '(safe-local-variable-values
	 '((cider-ns-refresh-after-fn . "dev/start")
		 (cider-ns-refresh-before-fn . "dev/stop")
		 (cider-ns-refresh-after-fn . "cognician.server-daemon/start-web")
		 (cider-ns-refresh-before-fn . "cognician.server-daemon/stop-web"))))

;;; custom.el ends here
