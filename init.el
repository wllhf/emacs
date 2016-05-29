(add-to-list 'load-path "~/.emacs.d/config")
;; general
(require 'package-management)
(require 'general-settings)
;; packages
(require 'ido-settings)
(require 'magit-settings)
(require 'org-settings)
;; languages
(require 'latex-settings)
(require 'python-settings)
;; load theme and maximize window
(load-theme 'zenburn t)
(toggle-frame-maximized)

