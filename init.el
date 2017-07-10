(package-initialize)
(add-to-list 'load-path "~/.emacs.d/config")
;; general
(require 'package-management)
(require 'general-settings)
;; packages
(require 'ace-window-settings)
(require 'ido-settings)
(require 'magit-settings)
(require 'org-settings)
(require 'company-settings)
;; languages
(require 'latex-settings)
(require 'python-settings)
;; load theme and maximize window
(load-theme 'zenburn t)
(toggle-frame-maximized)


;; (set-frame-font "Monaco 10")
;; (set-frame-font "Consolas 11")
 (set-frame-font "Inconsolata 12")
;; (set-frame-font "DejaVu Sans Mono 10")
;; (set-frame-font "Terminus 12")
;; (set-frame-font "Source Code Pro 10")
;; (set-frame-font "Bitstream Vera Sans Mono 11")
