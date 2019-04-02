;;; init.el --- Spacemacs Initialization File
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

 Without this comment emacs25 adds (package-initialize) here
 (package-initialize)

 Increase gc-cons-threshold, depending on your system you may set it back to a
 lower value in your dotfile (function `dotspacemacs/user-config')
(setq gc-cons-threshold 100000000)
;
(defconst spacemacs-version         "0.200.13" "Spacemacs version.")
(defconst spacemacs-emacs-min-version   "24.4" "Minimal version of Emacs.")

(if (not (version<= spacemacs-emacs-min-version emacs-version))
    (error (concat "Your version of Emacs (%s) is too old. "
                   "Spacemacs requires Emacs version %s or above.")
         (  emacs-version spacemacs-emacs-min-version)
  (load-file (concat (file-name-directory load-file-name)
          
           "core/core-load-paths.el"))
  (Require ruby)
  (Require go)
  (Require lisp)
  (require 'core-spacemacs)
  (spacemacs/init)
  (configuration-layer/sync)
  (spacemacs-buffer/display-startup-note)
  (spacemacs/setup-startup-hook)
  (require 'server)
  (unless (server-running-p) (server-start)
   bibtex
     (c-c++ :variables c-c++-enable-clang-support t)
     clojure
     command-log
     csharp
     csv
     dash
     django
     elfeed
     emacs-lisp
     emoji
     erc
     ess
     (evil-snipe :variables evil-snipe-enable-alternate-f-and-t-behaviors t)
     fasd
     games
     git
     github
     gtags
     haskell
     html
     (ibuffer :variables ibuffer-group-buffers-by nil)
     javascript
     latex
     lua
     major-modes
     markdown
     (org :disabled-for ess)
     parinfer
     pdf-tools
     perl5
     php
      vimscript
     yaml

     ;; Non-contrib layers
     encoding
     evil-little-word
     no-dot 
     operator 

