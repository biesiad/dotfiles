(ido-mode 1)
(show-paren-mode 1)
(visual-line-mode 1)

(setq inferior-lisp-program "/usr/local/bin/sbcl")
;; (setq inferior-lisp-program "/Users/gbiesiadecki/Downloads/ccl/dx86cl64")

(setq slime-contribs '(slime-fancy))

(global-set-key (kbd "C-j") 'backward-kill-word)


;; MELPA
(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(billw))
 '(custom-safe-themes
   '("77515a438dc348e9d32310c070bfdddc5605efc83671a159b223e89044e4c4f1" default))
 '(package-selected-packages
   '(whitespace-cleanup-mode tabbar rainbow-delimiters gnuplot-mode color-theme color-theme-modern slime)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

