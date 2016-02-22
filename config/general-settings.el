;; General settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Window properties ----------------------------------------------------------
;; Remove scrollbars, menu bars, and toolbars
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Start with maximized window
;(toggle-frame-maximized)

;; Turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode 1)

;; Do not ding!
(setq visible-bell t)

;; General emacs behaviour ----------------------------------------------------
;; Disable the splash screen
(setq inhibit-splash-screen t)

;; Show the current line and column number
(line-number-mode 1)
(column-number-mode 1)

;; Use X clipboard instead of primary
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t)

;; Show directory when multiple files with the same name are visited
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Save place of point when a buffer is killed
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory "places"))

;; Save backups in .emacs.d 
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))

;; line truncation
(setq-default truncate-lines 1)
(setq truncate-partial-width-windows 1)

;; Always use spaces, not tabs, when indenting
(setq-default indent-tabs-mode nil)

;; Alaways end file with newline
(setq require-final-newline t)

;; highlight parentheses when the cursor is next to them
(require 'paren)
(show-paren-mode 1)

;; Replace some default keybindings with more powerfull equivalents
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-z") 'zap-up-to-char)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(provide 'general-settings)
