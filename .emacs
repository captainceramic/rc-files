;; Set up the load path
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'color-theme)
;; Change the default font and size if we are in window mode.
;; Load the tangotango colour theme.
(if window-system
    (progn
      (set-face-attribute 'default nil :font "Source Code Pro")
      (require 'color-theme-tangotango)
      (color-theme-tangotango)))


;; Emacs package manager.
(require 'package)
;; Add the package archives and start up package.el
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)


;; Set the scheme implementation
(setq scheme-program-name "racket")

(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces)

