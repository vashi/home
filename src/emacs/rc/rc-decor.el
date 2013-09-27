;;; emacs-rc-decor.el ---

;; Copyright (C) 2003 Alex Ott
;;
;; Author: alexott@gmail.com
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet

(add-to-list 'custom-theme-load-path "~/src/emacs/theme-solarized")
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-arjen)
(load-theme 'solarized-light t)

(require 'tree-widget)

(load-library "time")
(setq display-time-24hr-format t
      display-time-mail-file t
      display-time-form-list (list 'time 'load)
      display-time-day-and-date t)
(display-time)
(blink-cursor-mode t)

;;
(require 'mwheel)
(mwheel-install)

;; use y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; set misc decoration variables
(custom-set-variables
 '(global-font-lock-mode t)
 '(scalable-fonts-allowed t)
 '(uniquify-buffer-name-style (quote forward))
 '(use-dialog-box nil)
 '(column-number-mode t)
 '(display-time-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(custom-buffer-done-kill t)
 '(initial-scratch-message nil)
 '(transient-mark-mode t))

;;(custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;; '(default ((t (:background "black" :foreground "gray80" :slant normal :weight normal :height 113 :width normal :family "Monospace"))))
;; '(ecb-default-general-face ((((class color) (background dark)) (:height 0.8))))
;; '(font-lock-comment-face ((t (:foreground "DeepSkyBlue"))))
;; '(font-lock-constant-face ((t (:foreground "white"))))
;; '(font-lock-function-face ((t (:weight bold))))
;; '(font-lock-function-name-face ((t (:foreground "LightSteelBlue"))))
;; '(font-lock-keyword-face ((t (:foreground "gold" :weight bold))))
;; '(font-lock-preprocessor-face ((t (:foreground "brown2"))))
;; '(font-lock-string-face ((t (:foreground "GreenYellow"))))
;; '(font-lock-type-face ((t (:foreground "white"))))
;; '(font-lock-variable-face ((t (:weight bold))))
;; '(mode-line ((t (:background "gray20" :foreground "white" :box (:line-width 1 :style released-button) :height 0.9))))
;; '(mode-line-buffer-id ((t (:background "gray40" :foreground "white" :weight bold)))))

;;(set-foreground-color "gray80")
;;(set-face-foreground 'default "gray80")

;;; emacs-rc-decor.el ends here
