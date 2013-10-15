;; Set up the load path
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Loads that are only needed for emacs 23 or earlier.
(if (< emacs-major-version 24)
    (progn
      ;; Load the tangotango colour theme.
      (require 'color-theme)
      (require 'color-theme-tangotango)
      (color-theme-tangotango)
      ;; Emacs package manager.
      (require 'package)))

;; Change the default font and size if we are in window mode.
(if window-system
    (progn
      (set-default-font "Source Code Pro-12")))


;; Add the package archives and start up package manager.
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

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

