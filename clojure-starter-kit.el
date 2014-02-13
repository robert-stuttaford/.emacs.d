;; General
(setq initial-scratch-message nil)                                         ; *scratch* starts empty
(when (locate-library "clojure-mode")                                      ; Set *scratch* to Clojure mode
  (setq initial-major-mode 'clojure-mode))

(projectile-global-mode)                                                   ; Quickly navigate projects using Projectile (C-c p C-h for available commands)
(setq projectile-show-paths-function 'projectile-hashify-with-relative-paths) ; Projectile shows full relative paths

;; Visual
(set-default-font "Pragmata TT 13")                                        ; Font
(load-theme 'sanityinc-tomorrow-night t)                                   ; Load my preferred theme, twilight
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)                        ; Enable rainbow delimiters when programming
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)                    ; Disable emacs-starter-kits line highlighting

(global-linum-mode t)                                                      ; Always show line numbers on left
(setq linum-format "%4d ")                                                 ; Line numbers gutter should be four characters wide

(line-number-mode 1)                                                       ; Mode line shows line numbers
(column-number-mode 1)                                                     ; Mode line shows column numbers

(setq-default tab-width 2)                                                 ; Tab width of 2
(fset 'yes-or-no-p 'y-or-n-p)                                              ; Emacs prompts should accept "y" or "n" instead of the full word

(setq visible-bell nil)                                                    ; No more Mr. Visual Bell Guy.
(setq ring-bell-function #'ignore)                                         ; No more annoying boop sound when scrolling on OSX.

(powerline-center-theme)                                                   ; enable centered powerline

;; Clojure
(setq auto-mode-alist (cons '("\\.edn$" . clojure-mode) auto-mode-alist))  ; *.edn are Clojure files
(setq auto-mode-alist (cons '("\\.cljs$" . clojure-mode) auto-mode-alist)) ; *.cljs are Clojure files

;; nREPL customizations
(setq cider-popup-stacktraces nil)                                         ; Don't aggresively popup stacktraces
(setq cider-popup-stacktraces-in-repl t)                                   ; Display stacktrace inline

(add-hook 'cider-interaction-mode-hook 'cider-turn-on-eldoc-mode)          ; Enable eldoc - shows fn argument list in echo area
(add-hook 'cider-repl-mode-hook 'paredit-mode)                             ; Use paredit in *cider* buffer
(add-hook 'clojure-mode-hook 'paredit-mode)

(add-to-list 'same-window-buffer-names "*cider")                          ; Make C-c C-z switch to *cider*


;; Ido-mode customizations
(setq ido-decorations                                                      ; Make ido-mode display vertically
      (quote
       ("\n-> "           ; Opening bracket around prospect list
        ""                ; Closing bracket around prospect list
        "\n   "           ; separator between prospects
        "\n   ..."        ; appears at end of truncated list of prospects
        "["               ; opening bracket around common match string
        "]"               ; closing bracket around common match string
        " [No match]"     ; displayed when there is no match
        " [Matched]"      ; displayed if there is a single match
        " [Not readable]" ; current diretory is not readable
        " [Too big]"      ; directory too big
        " [Confirm]")))   ; confirm creation of new file or buffer

(add-hook 'ido-setup-hook                                                  ; Navigate ido-mode vertically
          (lambda ()
            (define-key ido-completion-map [down] 'ido-next-match)
            (define-key ido-completion-map [up] 'ido-prev-match)
            (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
            (define-key ido-completion-map (kbd "C-p") 'ido-prev-match)))
