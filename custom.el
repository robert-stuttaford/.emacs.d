;;; -*- lexical-binding: t; -*-
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
 '(cider-test-fail-fast nil)
 '(hl-todo-keyword-faces
   '(("TODO" warning bold) ("FIXME" error bold)
     ("HACK" font-lock-constant-face bold)
     ("REVIEW" font-lock-keyword-face bold)
     ("DEPRECATED" font-lock-doc-face bold) ("NOTE" success bold)
     ("BUG" error bold) ("XXX" font-lock-constant-face bold)
     ("todo" warning bold)))
 '(package-selected-packages nil)
 '(safe-local-variable-values
   '((eval when (boundp 'lsp-file-watch-ignored-directories)
           (let*
               ((root
                 (file-truename
                  (locate-dominating-file default-directory
                                          ".dir-locals.el")))
                (allow-map
                 '(("" ".buildkite" "dev" "src" "test" "tf" "tools")
                   ("tf" "modules") ("tf/modules" "pun")
                   ("tf/modules/pun" "clj")))
                (directory-children
                 (lambda (dir)
                   (seq-filter
                    (lambda (path)
                      (and (file-directory-p path)
                           (not
                            (member
                             (file-name-nondirectory
                              (directory-file-name path))
                             '("." "..")))))
                    (directory-files dir t nil t))))
                (ignore-dir
                 (lambda (dir)
                   (concat "\\`" (regexp-quote (file-truename dir))
                           "/?\\'")))
                (ignored-regexps nil))
             (require 'seq)
             (dolist (entry allow-map)
               (let*
                   ((relative-parent (car entry))
                    (allowed-names (cdr entry))
                    (parent-dir
                     (file-name-as-directory
                      (expand-file-name relative-parent root))))
                 (when (file-directory-p parent-dir)
                   (dolist
                       (child (funcall directory-children parent-dir))
                     (let
                         ((name
                           (file-name-nondirectory
                            (directory-file-name child))))
                       (unless (member name allowed-names)
                         (push (funcall ignore-dir child)
                               ignored-regexps)))))))
             (setq ignored-regexps
                   (sort (delete-dups ignored-regexps) #'string<))
             (dolist (re ignored-regexps)
               (add-to-list 'lsp-file-watch-ignored-directories re))))
     (eval when (boundp 'lsp-file-watch-ignored-directories)
           (let*
               ((root
                 (file-truename
                  (locate-dominating-file default-directory
                                          ".dir-locals.el")))
                (allow-map
                 '(("" ".buildkite" "dev" "src" "test" "tf" "tools")
                   ("tf" "modules") ("tf/modules" "pun")
                   ("tf/modules/pun" "clj")))
                (directory-children
                 (lambda (dir)
                   (seq-filter
                    (lambda (path)
                      (and (file-directory-p path)
                           (not
                            (member
                             (file-name-nondirectory
                              (directory-file-name path))
                             '("." "..")))))
                    (directory-files dir t nil t))))
                (ignore-dir
                 (lambda (dir)
                   (concat "\\`" (regexp-quote (file-truename dir))
                           "/?\\'")))
                (ignored-regexps nil))
             (require 'seq)
             (dolist (entry allow-map)
               (let*
                   ((relative-parent (car entry))
                    (allowed-names (cdr entry))
                    (parent-dir
                     (file-name-as-directory
                      (expand-file-name relative-parent root))))
                 (when (file-directory-p parent-dir)
                   (dolist
                       (child (funcall directory-children parent-dir))
                     (let
                         ((name
                           (file-name-nondirectory
                            (directory-file-name child))))
                       (unless (member name allowed-names)
                         (push (funcall ignore-dir child)
                               ignored-regexps)))))))
             (setq ignored-regexps
                   (sort (delete-dups ignored-regexps) #'string<))
             (dolist (re ignored-regexps)
               (add-to-list 'lsp-file-watch-ignored-directories re))
             (message
              "lsp-file-watch-ignored-directories added by .dir-locals.el:\12%s"
              (mapconcat #'identity ignored-regexps "\12"))))
     (eval when (boundp 'lsp-file-watch-ignored-directories)
           (let*
               ((root
                 (file-truename
                  (locate-dominating-file default-directory
                                          ".dir-locals.el")))
                (allow-map
                 '(("" ".buildkite" "dev" "src" "test" "tf" "tools")
                   ("tf" "modules") ("tf/modules" "pun")
                   ("tf/modules/pun" "clj")))
                (directory-children
                 (lambda (dir)
                   (seq-filter
                    (lambda (path)
                      (and (file-directory-p path)
                           (not
                            (member
                             (file-name-nondirectory
                              (directory-file-name path))
                             '("." "..")))))
                    (directory-files dir t
                                     "\\`[^.]\\|\\`\\.buildkite\\'"))))
                (ignore-dir
                 (lambda (dir)
                   (concat "\\`" (regexp-quote (file-truename dir))
                           "/?\\'")))
                (ignored-regexps nil))
             (require 'seq)
             (dolist (entry allow-map)
               (let*
                   ((relative-parent (car entry))
                    (allowed-names (cdr entry))
                    (parent-dir
                     (file-name-as-directory
                      (expand-file-name relative-parent root))))
                 (when (file-directory-p parent-dir)
                   (dolist
                       (child (funcall directory-children parent-dir))
                     (let
                         ((name
                           (file-name-nondirectory
                            (directory-file-name child))))
                       (unless (member name allowed-names)
                         (push (funcall ignore-dir child)
                               ignored-regexps)))))))
             (setq ignored-regexps
                   (sort (delete-dups ignored-regexps) #'string<))
             (dolist (re ignored-regexps)
               (add-to-list 'lsp-file-watch-ignored-directories re))))
     (eval when (boundp 'lsp-file-watch-ignored-directories)
           (let*
               ((root
                 (file-truename
                  (locate-dominating-file default-directory
                                          ".dir-locals.el")))
                (allow-map
                 '(("" ".buildkite" "dev" "src" "test" "tf" "tools")
                   ("tf" "modules") ("tf/modules" "pun")
                   ("tf/modules/pun" "clj")))
                (directory-children
                 (lambda (dir)
                   (seq-filter
                    (lambda (path)
                      (and (file-directory-p path)
                           (not
                            (member
                             (file-name-nondirectory
                              (directory-file-name path))
                             '("." "..")))))
                    (directory-files dir t
                                     "\\`[^.]\\|\\`\\.buildkite\\'"))))
                (ignore-dir
                 (lambda (dir)
                   (concat "\\`" (regexp-quote (file-truename dir))
                           "/?\\'")))
                (ignored-regexps nil))
             (require 'seq)
             (dolist (entry allow-map)
               (let*
                   ((relative-parent (car entry))
                    (allowed-names (cdr entry))
                    (parent-dir
                     (file-name-as-directory
                      (expand-file-name relative-parent root))))
                 (when (file-directory-p parent-dir)
                   (dolist
                       (child (funcall directory-children parent-dir))
                     (let
                         ((name
                           (file-name-nondirectory
                            (directory-file-name child))))
                       (unless (member name allowed-names)
                         (push (funcall ignore-dir child)
                               ignored-regexps)))))))
             (setq ignored-regexps
                   (sort (delete-dups ignored-regexps) #'string<))
             (dolist (re ignored-regexps)
               (add-to-list 'lsp-file-watch-ignored-directories re))
             (message
              "lsp-file-watch-ignored-directories added by .dir-locals.el:\12%s"
              (mapconcat #'identity ignored-regexps "\12")))))))

;;; custom.el ends here
