(ido-mode 1)
(show-paren-mode 1)
(visual-line-mode 1)

(setq inferior-lisp-program "/usr/local/bin/sbcl")
;; for raspberry pi
;; (setq inferior-lisp-program "/Users/gbiesiadecki/Downloads/ccl/dx86cl64")

(setq slime-contribs '(slime-fancy))

(global-set-key (kbd "C-j") 'backward-kill-word)
(global-set-key (kbd "C-t") 'fzf-git-files)

(global-set-key (kbd "M-RET") 'hs-toggle-hiding)
(global-set-key (kbd "M-p") 'fzf-git-files)
(global-set-key (kbd "M-F") 'fzf-git-grep)		

(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs-backups/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

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
   '(fzf rainbow-delimiters slime)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
