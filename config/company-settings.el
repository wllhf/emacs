(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; (eval-after-load 'company
;;    '(add-to-list 'company-backends 'company-irony))

;; (require 'company-irony-c-headers)
;; ;; Load with `irony-mode` as a grouped backend
;; (eval-after-load 'company
;;   '(add-to-list
;;     'company-backends '(company-irony-c-headers company-irony)))

;; (require 'cc-mode)
;; (setq company-backends (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)

;(add-to-list 'company-backends 'company-c-headers)
;(add-to-list 'company-c-headers-path-system "/usr/include/c++/6/")


(provide 'company-settings)
