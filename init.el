;;; package --- Init
;;; Commentary:
;;; Init
;;; Code:

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; fixes "error: Package ‘spinner-1.7.3’ is unavailable"
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

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

(dolist (cf config-files)
  (load (expand-file-name cf user-emacs-directory)))

(load-theme 'tango-dark t)

(setq max-lisp-eval-depth 2000)

(setq image-types '(svg png gif tiff jpeg xpm xbm pbm))

;(setq inhibit-message nil)


;;; init.el ends here
