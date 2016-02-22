(add-to-list 'load-path "~/.emacs.d/config")
(require 'package-management)
(require 'general-settings)
;; (require 'helm-settings)
(require 'ido-settings)
(require 'magit-settings)
(require 'latex-settings)
(require 'org-settings)

;; require and enable packages
(elpy-enable)
(load-theme 'zenburn t)
(toggle-frame-maximized)

