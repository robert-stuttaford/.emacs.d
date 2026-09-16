;;; -*- lexical-binding: t; -*-
;;; package --- Init
;;; Commentary:
;;; Init
;;; Code:

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(defvar config-files
  '("packages.el"
    "general.el"
    "font.el"
    "ivy.el"
    "whitespace.el"
    "hideshow.el"
    "projectile.el"
    "clojure.el"
    "cider.el"
    "magit.el"
    "keybinds.el"
    "git-link.el"
    "centaur-tabs.el"
    "custom.el")
  "Config files to load at launch.")

(setq load-prefer-newer t)

(dolist (cf config-files)
  (load (file-name-sans-extension
         (expand-file-name cf user-emacs-directory))))

(load-theme 'tango-dark t)

(setq max-lisp-eval-depth 2000)

(setq image-types '(svg png gif tiff jpeg xpm xbm pbm))

;(setq inhibit-message nil)

;; Compile personal configuration only; excludes vendor packages and saved data.
;; (let ((files (directory-files user-emacs-directory t "\\`[^.#].*\\.el\\'"))) (mapc #'byte-compile-file files) (native-compile-async files))
;; (native-compile-async (directory-files user-emacs-directory t "\\`[^.#].*\\.el\\'"))


;;; init.el ends here
