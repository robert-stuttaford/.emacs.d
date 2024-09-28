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
 '(hl-todo-keyword-faces
   '(("TODO" warning bold)
     ("FIXME" error bold)
     ("HACK" font-lock-constant-face bold)
     ("REVIEW" font-lock-keyword-face bold)
     ("DEPRECATED" font-lock-doc-face bold)
     ("NOTE" success bold)
     ("BUG" error bold)
     ("XXX" font-lock-constant-face bold)
     ("todo" warning bold)))
 '(magit-todos-branch-list-merge-base-ref "develop")
 '(magit-todos-exclude-globs
   '(".git/ src/radiant src/cognician/builder src/cognician/externalia src/cognician/playwright src/cognician/radiant src/cognician/semaphore src/cognician/tools src/cognician/variables resources/ tools/ src/cognician/builder2 src/cognician/chat src/cognician/feedback_assesssment"))
 '(package-selected-packages
   '(magit-todos exec-path-from-shell super-save highlight buffer-move git-link magit centaur-tabs powerline smex flx counsel-projectile counsel projectile popup company color-identifiers-mode idle-highlight-mode rainbow-delimiters flycheck-clj-kondo html-to-hiccup cider-eval-sexp-fu align-cljlet clj-refactor cider clojure-mode use-package)))

;;; custom.el ends here
