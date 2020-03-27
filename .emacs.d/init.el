(setq user-full-name "Evan Aranda")
(setq user-mail-address "evan.m.aranda@evanmaranda.com")

(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(show-paren-mode t)
(setq-default highlight-tabs t)
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'before-save-hook (lambda() (delete-trailing-whitespace)))

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))

(require 'use-package)

;; Package Definition Template
;; (use-package <name>
;;   :ensure <name>
;;   :init (progn
;;           ;; Do something after the package is initialized
;;	))

(use-package evil
  :ensure evil
  :init (progn
	  ;; Do something after the package is initialized
	  (evil-mode 1)
	))

(use-package powerline
  :ensure powerline
  :init (progn
	  ;; Do something after the package is initialized
	  (powerline-default-theme)
	))

(use-package julia-mode
  :ensure julia-mode
  :init (progn
	  ;; Do something after the package is initialized

	))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
