(require 'ido)
(require 'ido-ubiquitous)
(require 'flx-ido)
(require 'ido-vertical-mode)

(ido-mode t)

(ido-everywhere t)

(ido-ubiquitous-mode t)

(flx-ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(ido-vertical-mode t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(provide 'ido-settings)
