;;; package --- Packages
;;; Commentary:
;;; Packages
;;; Code:

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(package-install 'use-package)

(defvar my-packages
  '(gnu-elpa-keyring-update
    ;; Clojure & friends
    clojure-mode
    ;lsp-mode
    cider
    clj-refactor
    align-cljlet
    cider-eval-sexp-fu
    html-to-hiccup
    flycheck-clj-kondo
    ;; Lisps
    paredit
    rainbow-delimiters
    idle-highlight-mode
    color-identifiers-mode
    ;; Completion popup
    company
    popup
    ;; Project navigation
    projectile
    ;; ivy / counsel / swiper 
    counsel
    counsel-projectile
    flx
    smex ; so that counsel remembers history for M-x
    ;; uis
    powerline
    centaur-tabs
    ;; git
    magit
    git-link
    ;; Misc.
    buffer-move
    highlight
    super-save
    exec-path-from-shell
    yasnippet)
  "A list of packages to ensure are installed at launch.")

;; Automaticaly install any missing packages
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;; packages.el ends here
