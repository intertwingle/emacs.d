
(setq gc-cons-threshold 400000000)

;; Setup package repo
;;
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap use-package
;;
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))


;; Load my config from org file code blocks
;;
(org-babel-load-file (expand-file-name "~/.emacs.d/my-init.org"))
(setq gc-cons-threshold 800000)

