;;; package --- Packages
;;; Commentary:
;;; Packages
;;; Code:

(require 'package)

(add-to-list 'package-archives '("melpa" .        "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;(add-to-list 'package-archives '("marmalade" .    "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(;; Clojure & friends
    clojure-mode
    ;lsp-mode
    ;lsp-treemacs
    cider
    clj-refactor
    ;align-cljlet
    ;cider-eval-sexp-fu
    ;html-to-hiccup
    ;flycheck-clj-kondo
    ;; Lisps
    paredit
    ;rainbow-delimiters
    ;idle-highlight-mode
    ;color-identifiers-mode
    ;; Completion popup
    ;company
    ;popup
    ;; Project navigation
    ;projectile
    ;; ivy / counsel / swiper
    ;counsel
    ;counsel-projectile
    ;flx
    ;smex ; so that counsel remembers history for M-x
    ;; uis
    ;powerline
    ;centaur-tabs
    ;; git
    magit
    ;git-link
    ;; Misc.
    ;buffer-move
    ;highlight
    ;super-save
    ;exec-path-from-shell
    ;yasnippet
    ;; theme
    ;leuven-theme
    ;doom-themes
    )
  "A list of packages to ensure are installed at launch.")

;; Automaticaly install any missing packages
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;; packages.el ends here
