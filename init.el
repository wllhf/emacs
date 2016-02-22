(add-to-list 'load-path "~/.emacs.d/config")
(require 'general-settings)
(require 'package-management)
(require 'magit-settings)
(require 'latex-settings)
(require 'org-settings)

;; require and enable packages
(elpy-enable)
(load-theme 'zenburn t)
(toggle-frame-maximized)

