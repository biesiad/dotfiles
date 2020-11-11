(ido-mode 1)
(show-paren-mode 1)
(visual-line-mode 1)

(setq inferior-lisp-program "/usr/local/bin/sbcl")
;; (setq inferior-lisp-program "/Users/gbiesiadecki/Downloads/ccl/dx86cl64")

(setq slime-contribs '(slime-fancy))

(global-set-key (kbd "C-j") 'backward-kill-word)
(global-set-key (kbd "C-t") 'fzf-git-files)

(global-set-key (kbd "<M-return>") 'yafolding-toggle-element)
(define-key yafolding-mode-map (kbd "<M-RET>") 'yafolding-toggle-element)

(defvar yafolding-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "<C-S-return>") #'yafolding-hide-parent-element)
    (define-key map (kbd "<C-M-return>") #'yafolding-toggle-all)
    (define-key map (kbd "<C-return>") #'yafolding-toggle-element)
    map))

(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
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
   '(yafolding rspec-mode fzf helm whitespace-cleanup-mode tabbar rainbow-delimiters gnuplot-mode color-theme color-theme-modern slime)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
