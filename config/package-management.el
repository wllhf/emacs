;; Package management
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Require packages
(require 'package)
(require 'cl)

;; Archives
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))

;; Initalize package system
(package-initialize)

;; List of emacs packages to be installed
;; Required system packages:
;; - magit: git
;; - elpy: rope jedi flake8 importmagic autopep8 yapf
;; - auctex: texlive ghostcript dvips gv
(defvar required-packages
  '(
    magit ; Interface to Git source code management for emacs.
    elpy ; Python editing and IDE features for emacs.
    auctex ; LaTeX support for emacs.
    zotelo ; Sync LaTeX and Zotero.
    zenburn-theme ; Worlds best low contrast color theme.
  ) "List of required emacs packages." )

;; function to check if all required packages (the ones in required-packages variable) are installed
(defun packages-installed-p ()
  (cl-every 'package-installed-p required-packages))

;; if there are packages that are not yet installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'package-management)