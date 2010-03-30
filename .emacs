(load "~/stuff/emacs/rc/emacs-rc-mule.el")
(load "~/stuff/emacs/rc/emacs-rc-common-hooks.el")
(load "~/stuff/emacs/rc/emacs-rc-decor.el")
(load "~/stuff/emacs/rc/emacs-rc-kbd.el")
(load "~/stuff/emacs/rc/emacs-rc-info.el")
(load "~/stuff/emacs/rc/emacs-rc-tabbar.el")
(load "~/stuff/emacs/rc/emacs-rc-nxml.el")

(load "~/stuff/emacs/rc/emacs-rc-python.el")
(load "~/stuff/emacs/rc/emacs-rc-prog-misc.el")
(load "~/stuff/emacs/rc/emacs-rc-flymake.el")
(load "~/stuff/emacs/rc/emacs-rc-gdb.el")
(load "~/stuff/emacs/rc/emacs-rc-ccmode.el")
(load "~/stuff/emacs/rc/emacs-rc-cedet.el")
(load "~/stuff/emacs/rc/emacs-rc-ecb.el")
(load "~/stuff/emacs/rc/emacs-rc-iswitchb.el")

;;(load "~/emacs/rc/emacs-rc-erlang.el")

(setq-default truncate-lines t)

(require 'color-theme)
(color-theme-arjen)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-buffer-done-kill t)
 '(display-time-mode t)
 '(ecb-layout-name "vash3")
 '(ecb-layout-window-sizes (quote (("vash3" (0.25925925925925924 . 0.1794871794871795) (0.25925925925925924 . 0.4358974358974359) (0.12962962962962962 . 0.358974358974359) (0.12962962962962962 . 0.358974358974359)))))
 '(ecb-options-version "2.40")
 '(global-font-lock-mode t)
 '(global-semantic-tag-folding-mode t nil (semantic-util-modes))
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(longlines-auto-wrap nil)
 '(scalable-fonts-allowed t)
 '(semantic-idle-scheduler-idle-time 3)
 '(semantic-self-insert-show-completion-function (lambda nil (semantic-ia-complete-symbol-menu (point))))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(uniquify-buffer-name-style (quote forward))
 '(use-dialog-box nil)
 '(whitespace-global-mode nil)
 '(whitespace-modes (quote (awk-mode)))
 '(whitespace-silent t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:background "black" :foreground "gray80" :slant normal :weight normal :height 113 :width normal :family "Monospace"))))
 '(ecb-default-general-face ((((class color) (background dark)) (:height 0.8))))
 '(font-lock-comment-face ((t (:foreground "DeepSkyBlue"))))
 '(font-lock-constant-face ((t (:foreground "white"))))
 '(font-lock-function-face ((t (:weight bold))))
 '(font-lock-function-name-face ((t (:foreground "LightSteelBlue"))))
 '(font-lock-keyword-face ((t (:foreground "gold" :weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "brown2"))))
 '(font-lock-string-face ((t (:foreground "GreenYellow"))))
 '(font-lock-type-face ((t (:foreground "white"))))
 '(font-lock-variable-face ((t (:weight bold))))
 '(mode-line ((t (:background "gray20" :foreground "white" :box (:line-width 1 :style released-button) :height 0.9))))
 '(mode-line-buffer-id ((t (:background "gray40" :foreground "white" :weight bold)))))

(set-foreground-color "gray80")
(set-face-foreground 'default "gray80")

