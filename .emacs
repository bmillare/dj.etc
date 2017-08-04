;;;;---------------------------------------------------------------------------
;; .emacs configuration file
;; author: Brent Millare
;;;;---------------------------------------------------------------------------

;; Load common defaults
(require 'cl)
(require 'site-gentoo nil t)
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'load-path "~/dj/etc/")
(require 'dj)
(require 'helm)
(require 'helm-config)
(setq helm-split-window-in-side-p t)
;; better than defaults
(global-set-key (kbd "M-x") 'helm-M-x)            ; has hotkeys next to the side
(global-set-key (kbd "C-x b") 'helm-mini)         ; has recent files
(global-set-key (kbd "C-x C-f") 'helm-find-files) ; has binding to helm-find
(helm-mode 1)

;; Interface Color Scheme
(when window-system
  ;; (add-to-list 'default-frame-alist '(background-color . "gray0"))
  (add-to-list 'default-frame-alist '(background-color . "black"))
  (add-to-list 'default-frame-alist '(foreground-color . "gray85"))
  (add-to-list 'default-frame-alist '(cursor-color . "red3"))
  (add-to-list 'default-frame-alist '(mouse-color . "white")))

;; General Options
(setq auto-save-timeout 2000)
(setq make-backup-files nil)
(set-scroll-bar-mode 'right)
(setq x-select-enable-clipboard t)
(column-number-mode 1)
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq inhibit-startup-screen t) 
(setq default-truncate-lines t)                         ;;Do not word wrap, act like nano -w
(define-key global-map (kbd "RET") 'newline-and-indent) ;;After newline, auto indent
(setq c-basic-offset 4)                                 ;;Spacing for indentation
(setq transient-mark-mode t)                            ;;Color selected regions
(setq mark-even-if-inactive t)                          ;;tradi style but still use color
;; trying out helm, disabling
;(require 'uniquify)
;(setq uniquify-buffer-name-style 'post-forward)
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c j") 'windmove-down)
;; trying out helm, disabling
; (require 'ibuffer)
; (global-set-key (kbd "C-x C-b") 'ibuffer)
; (setq ibuffer-default-sorting-mode 'major-mode)

;; Colors for code
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((t (:foreground "cyan" :weight bold))))
 '(font-lock-comment-face ((t (:foreground "LightPink"))))
 '(font-lock-constant-face ((t (:foreground "SpringGreen"))))
 '(font-lock-doc-string-face ((t (:foreground "SpringGreen"))))
 '(font-lock-function-name-face ((t (:foreground "wheat3"))))
 '(font-lock-keyword-face ((t (:foreground "SkyBlue" :bold t))))
 '(font-lock-preprocessor-face ((t (:foreground "SkyBlue"))))
 '(font-lock-reference-face ((t (:foreground "yellow"))))
 '(font-lock-string-face ((t (:foreground "SpringGreen"))))
 '(font-lock-type-face ((t (:foreground "orange1"))))
 '(font-lock-variable-name-face ((t (:foreground "yellow"))))
 '(font-lock-warning-name-face ((t (:foreground "DarkOrange")))))

(server-start)

(put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm helm-cider undo-tree lentic helm-projectile helm-ag ac-cider)))
 '(safe-local-variable-values (quote ((lentic-init . lentic-clojure-org-init)))))
