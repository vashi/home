;;
;; Mimic VIM's search at point
;;

(require 'etags) ;; provides `find-tag-default' in Emacs 21.
  
  (defun isearch-yank-regexp (regexp)
    "Pull REGEXP into search regexp." 
    (let ((isearch-regexp nil)) ;; Dynamic binding of global.
      (isearch-yank-string regexp))
    (isearch-search-and-update))
  
  (defun isearch-yank-symbol (&optional partialp)
    "Put symbol at current point into search string.
  
  If PARTIALP is non-nil, find all partial matches."
    (interactive "P")
    (let* ((sym (find-tag-default))
	   ;; Use call of `re-search-forward' by `find-tag-default' to
	   ;; retrieve the end point of the symbol.
	   (sym-end (match-end 0))
	   (sym-start (- sym-end (length sym))))
      (if (null sym)
	  (message "No symbol at point")
	(goto-char sym-start)
	;; For consistent behavior, restart Isearch from starting point
	;; (or end point if using `isearch-backward') of symbol.
	(isearch-search)
	(if partialp
	    (isearch-yank-string sym)
	  (isearch-yank-regexp
	   (concat "\\_<" (regexp-quote sym) "\\_>"))))))
  
  (defun isearch-current-symbol (&optional partialp)
    "Incremental search forward with symbol under point.
  
  Prefixed with \\[universal-argument] will find all partial
  matches."
    (interactive "P")
    (let ((start (point)))
      (isearch-forward-regexp nil 1)
      (isearch-yank-symbol partialp)))
  
  (defun isearch-backward-current-symbol (&optional partialp)
    "Incremental search backward with symbol under point.
  
  Prefixed with \\[universal-argument] will find all partial
  matches."
    (interactive "P")
    (let ((start (point)))
      (isearch-backward-regexp nil 1)
      (isearch-yank-symbol partialp)))
  
  (global-set-key [f3] 'isearch-current-symbol)
  (global-set-key [(control f3)] 'isearch-backward-current-symbol)
  
  ;; Subsequent hitting of the keys will increment to the next
  ;; match--duplicating `C-s' and `C-r', respectively.
  (define-key isearch-mode-map [f3] 'isearch-repeat-forward)
  (define-key isearch-mode-map [(control f3)] 'isearch-repeat-backward)
