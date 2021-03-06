;;; package --- Summary -*- lexical-binding: t -*-
;;; code:
;;; Commentary:

(use-package paredit
  :ensure t
  :diminish paredit-mode
  :init (progn
	  (add-hook 'prog-mode-hook 'enable-paredit-mode)
	  )
  :config (progn
	    (defun paredit/space-for-delimiter-p (endp delm)
	      (or (member 'font-lock-keyword-face (text-properties-at (1- (point))))
		  (not (derived-mode-p 'basic-mode
				       'c++-mode
				       'c-mode
				       'coffee-mode
				       'csharp-mode
				       'd-mode
				       'dart-mode
				       'go-mode
				       'java-mode
				       'js-mode
				       'lua-mode
				       'objc-mode
				       'pascal-mode
				       'python-mode
				       'r-mode
				       'ruby-mode
				       'rust-mode
				       'typescript-mode))))
	    (add-to-list 'paredit-space-for-delimiter-predicates 'paredit/space-for-delimiter-p)
	    )
  )
(provide 'init-lisp)

;;; init-lisp.el ends here
