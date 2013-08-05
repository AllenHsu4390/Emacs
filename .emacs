(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode 1)
 '(custom-enabled-themes (quote (wombat)))
 '(fill-column 80))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; Functions
(defun set-default-window-frame-size (width height)
  (if window-system (set-frame-size (selected-frame) width height)))

(defun set-scheme-indent-functions (lst)
  (mapc (lambda (sym) (put sym 'scheme-indent-function 'defun)) lst))
;;;

;;; Generic
(set-face-attribute 'default nil :font "Ubuntu Mono-10")
(setq-default cursor-type 'hbar)
(set-cursor-color "Green")
(set-default-window-frame-size 279 82)
(setq show-trailing-whitespace t)
(set-register ?e (cons 'file "~/.emacs"))
;;;

;;; package loading
(add-to-list 'load-path "~/pkg")
;;;

;;; C
(setq c-default-style "java" c-basic-offset 2)
;;;

;;; Scheme
(defvar scheme-indent-function-list
  (list 'glambda
	'gdefine
	'module
	'foreign-lambda*
	'gdefine-kernel
	'gwrap
	'glet))
(set-scheme-indent-functions scheme-indent-function-list)
;;;

;;; Column Ruler
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(setq fci-rule-width 1)
(setq fci-rule-color "grey")
(global-fci-mode 1)
;;;
