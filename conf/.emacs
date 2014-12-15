(load-file "~/.elisp/go-mode.el")

(require 'uniquify)

(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)

(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq-default show-trailing-whitespace t)

(setq-default c-default-style "bsd"
              c-basic-offset 4
              c-indent-level 4)

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode nil)))

(setq ring-bell-function (lambda ()))
(tool-bar-mode -1)

(add-hook 'c-mode-common-hook
          '(lambda ()
             (c-set-offset 'substatement-open 0)
             (if (assoc 'inexpr-class c-offsets-alist)
                 (c-set-offset 'inexpr-class 0))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(confirm-kill-emacs (quote yes-or-no-p))
 '(custom-enabled-themes (quote (wombat)))
 '(indent-tabs-mode nil)
 '(ns-antialias-text nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
