;;; package --- Ivy
;;; Commentary:
;;; Ivy
;;; Code:

(ivy-mode 1)

(setq ivy-use-virtual-buffers t
      ivy-count-format "%d/%d ")

(global-set-key (kbd "M-w") 'swiper-thing-at-point)

;; fuzzy find
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))
(setq ivy-initial-inputs-alist nil)

;;; ivy.el ends here
