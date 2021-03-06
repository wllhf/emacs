(package-initialize)
(add-to-list 'load-path "~/.emacs.d/config")

;; general
(require 'package-management)
(require 'general-settings)

;; packages
(require 'ivy-settings)
(require 'ace-window-settings)

(require 'magit-settings)
(require 'company-settings)

;(require 'org-settings)

;; languages
(require 'latex-settings)
(require 'python-settings)

;; load theme and maximize window
(load-theme 'zenburn t)
(toggle-frame-maximized)

;; fonts
;; (set-frame-font "Monaco 10")
;; (set-frame-font "Consolas 11")
(set-frame-font "Inconsolata 11")
;; (set-frame-font "DejaVu Sans Mono 10")
;; (set-frame-font "Terminus 12")
;; (set-frame-font "Source Code Pro 10")
;; (set-frame-font "Bitstream Vera Sans Mono 11")

;; save customizations in different file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
