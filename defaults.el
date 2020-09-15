;; -------------------------------------------------------------------
;; Settings for vanilla emacs
;; Copyright 2020 Nicolas P. Rougier
;; -------------------------------------------------------------------
;; This file is not part of GNU Emacs.
;;
;; This program is free software: you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of the
;; License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>
;; -------------------------------------------------------------------
;; Description:
;;   The goal of this configuration file is to materialize what are
;;   Emacs default settings. If you start emacs using "emacs -q" or
;;   "emacs -q -l defaults.el", you should obtain the exact same look
;;   and behavior.
;; -------------------------------------------------------------------
;; Usage: emacs -q -l defaults.el
;; -------------------------------------------------------------------

;; Selected frame width (in characters)
;; (set-frame-parameter nil 'width 80)

;; Selected frame height (in characters)
;; (set-frame-parameter nil 'height 36)

;; Selected frame border (in pixels)
;; (set-frame-parameter nil 'internal-border-width 0)

;; Selected frame font family and size
;; (set-frame-parameter nil 'font "Monaco 12")

;; Frame default parameters
(setq default-frame-alist
   (append (list
          '(width . 80)                ;; width (in characters)
          '(height . 36)               ;; height (in characters)
          '(internal-border-width . 0) ;; border (in pixels)
          '(font . "Monaco 12"))))     ;; font family and size

;; Left and right fringe size (in pixels)
(fringe-mode '(8 . 8))

;; Left margin (in characters)
(setq-default left-margin-width 0)

;; Right margin (in characters)
(setq-default right-margin-width 0)

;; Line spacing (in pixels)
(setq-default line-spacing 0)

;; Disable color themes (use defaults)
(disable-theme nil)

;; Cursor appearance in selected window
(set-default 'cursor-type 'box)

;; Blinking cursor
(blink-cursor-mode 1)

;; Show cursor in non selected windows
(setq-default cursor-in-non-selected-windows t)

;; Toggle display of a menu bar on each frame.
(menu-bar-mode 1)

;; Toggle the tool bar on each frame
(tool-bar-mode 1)

;; Toggle vertical scroll bars on each frame
(scroll-bar-mode 1)

;; Non-nil inhibits the startup screen.
(setq-default inhibit-startup-message nil)

;; Non-nil inhibits the initial startup echo area message.
(setq-default inhibit-startup-echo-area-message nil)

;; Initial message displayed in *scratch* buffer at startup.
(setq-default initial-scratch-message
      (concat ";; This buffer is for text that is not,"
                  " saved, and for Lisp evaluation.\n"
              ";; To create a file, visit it with \\[find-file]"
                  " and enter text in its buffer.\n\n"))

;; Major mode to use for the initial ‘*scratch*’ buffer.
(setq-default initial-major-mode 'lisp-interaction-mode)

;; Non-nil means do not display continuation lines.
(setq-default truncate-lines nil)

;; Column beyond which automatic line-wrapping should happen.
(setq-default fill-column 70)

;; Typed characters typed push text to the right.
(overwrite-mode 0)

;; Toggle Common User Access style editing (C-c/C-v/C-x/C-u)
(cua-mode 0)

;; Key bindings (some, there are many more)
(global-set-key (kbd "C-g")     'keyboard-quit)    ;; Cancel (anything)
(global-set-key (kbd "C-h")     'help)             ;; Help
(global-set-key (kbd "C-/")     'undo)             ;; Undo
(global-set-key (kbd "C-x C-c") 'kill-emacs)       ;; Kill emacs
(global-set-key (kbd "C-x C-f") 'find-file)        ;; Find file
(global-set-key (kbd "C-x C-s") 'save-buffer)      ;; Save buffer
(global-set-key (kbd "C-x k")   'kill-buffer)      ;; Kill buffer
(global-set-key (kbd "C-x b")   'switch-to-buffer) ;; Switch buffer
(global-set-key (kbd "C-x d")   'dired)            ;; Browse directory
(global-set-key (kbd "C-x u")   'undo)             ;; Undo
(global-set-key (kbd "C-x C-e") 'eval-last-sexp)   ;; Evaluate expression

;; Header line format
(setq-default header-line-format nil)

;; Mode line format
(setq-default mode-line-format
              '("%e"
                mode-line-front-space
                mode-line-mule-info
                mode-line-client
                mode-line-modified
                mode-line-remote
                mode-line-frame-identification
                mode-line-buffer-identification
                "   "
                mode-line-position
                (vc-mode vc-mode)
                "  "
                mode-line-modes
                mode-line-misc-info
                mode-line-end-spaces))

;; Frame title format
(setq-default frame-title-format nil)
