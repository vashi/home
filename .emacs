;; set init file for custom settings
(setq custom-file "~/.emacs-custom.el")

;; load concrete packages
(load "~/src/emacs/rc/rc-mule.el")
(load "~/src/emacs/rc/rc-misc-things.el")
(load "~/src/emacs/rc/rc-common-hooks.el")
(load "~/src/emacs/rc/rc-decor.el")
(load "~/src/emacs/rc/rc-kbd.el")
(load "~/src/emacs/rc/rc-tabbar.el")

(load "~/src/emacs/rc/rc-prog-misc.el")
(load "~/src/emacs/rc/rc-ccmode.el")
(load "~/src/emacs/rc/rc-cedet.el")
(load "~/src/emacs/rc/rc-ecb.el")

(load "~/src/emacs/rc/rc-desktop.el")
(load custom-file 'noerror)

