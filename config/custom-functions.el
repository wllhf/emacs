;; Custom functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; function to check if all required packages (the ones in required-packages variable) are installed
(defun packages-installed-p ()
  (cl-every 'package-installed-p required-packages))
