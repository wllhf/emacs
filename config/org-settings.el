(require 'org)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done t)

;; agenda
(setq org-agenda-files (list "~/org/ma.org"
                             "~/org/mpi.org" 
                             "~/org/uni.org"
                             "~/org/stuff.org"))

(provide 'org-settings)
