;; To support more LaTeX packages these lines are necessary.
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;; Ask always for master file.
(setq-default TeX-master nil)

;; Default to PDF, PS sucks.
(setq TeX-PDF-mode t)

;; Modes
(add-hook 'LaTeX-mode-hook 'visual-line-mode) ; Handles long lines visual not logical.
(add-hook 'LaTeX-mode-hook 'flyspell-mode) ; On-the-fly spell checking.
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode) ; Rebinding the key LaTeX-math-abbrev-prefix to `.

(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; Helps with references and labels.
(setq reftex-plug-into-AUCTeX t)

;(add-hook 'TeX-mode-hook 'zotelo-minor-mode) ; Sync with Zotero.

(provide 'latex-settings)
