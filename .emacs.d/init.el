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

(use-package all-the-icons
  :ensure all-the-icons)

(use-package evil
  :ensure evil
  :init (progn
	  (evil-mode 1)
	))

(use-package powerline
  :ensure powerline
  :init (progn
	  (powerline-center-theme)
	))

(use-package julia-mode
  :ensure julia-mode
  :init (progn
	))

(use-package projectile
  :ensure projectile
  :init (progn
	  (projectile-mode 1)
	  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
	))

(use-package neotree
  :ensure neotree
  :init (progn
	  (global-set-key [f8] 'neotree-toggle)
	  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))

	  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
	  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
	  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
	  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
	  (evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
	  (evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
	  (evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
	  (evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
	  (evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)
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
