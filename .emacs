
;; Set up the load path
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Add the package archives and start up package manager.
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Loads that are only needed for emacs 23 or earlier.
(if (< emacs-major-version 24)
    (progn
      ;; Emacs package manager.
      (require 'package)
      (package-initialize)

      ;; Load the colour theme package.
      (require 'color-theme)
      
      ;; Load all the theme files that are present.
      (setq file-names
	    (directory-files "~/.emacs.d/themes" nil "^\\([^.]\\|\\.[^.]\\|\\.\\..\\)"))
      (mapcar 'require (mapcar 'intern (mapcar 'file-name-sans-extension file-names)))
     
      ;; Load the actual theme.
      ;;(color-theme-tangotango)
      (color-theme-solarized-light))
      
  ;; If emacs > 24, load wombat theme.
  (load-theme 'wombat))

;; Change the default font and size if we are in window mode.
(if window-system
    (progn
      (set-default-font "Source Code Pro-12")))

;; Change the backup settings to avoid cluttering the tree.
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.saves"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control 2)

;; Set the scheme implementation
(setq scheme-program-name "racket")

;; Inhibit startup screen.
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces)

