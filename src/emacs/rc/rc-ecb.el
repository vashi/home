;;; emacs-rc-ecb.el ---

;; Copyright (C) 2003 Alex Ott
;;
;; Author: alexott@gmail.com
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet

;; Emacs code browser
(add-to-list 'load-path "~/src/emacs/ecb")
(require 'cl)
(require 'ecb)

(setq stack-trace-on-error t)
(setq-default ecb-tip-of-the-day nil)


;;; emacs-rc-ecb.el ends here
