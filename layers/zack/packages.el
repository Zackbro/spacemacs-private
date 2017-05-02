;;; packages.el --- zack layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:  <zack@Lenovo-PC>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `zack-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `zack/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `zack/pre-init-PACKAGE' and/or
;;   `zack/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:
(defconst zack-packages
  '(youdao-dictionary
    company
    )
  )
(defun zack/init-youdao-dictionary()
  (use-package youdao-dictionary
    :defer t
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    )
  )

(defun zack/post-init-company()
  (setq company-minimum-prefix-length 1)
  )
;;; packages.el ends here
                                                ┗━━━┛╋╋╋╋┃┏━┛╋╋╋╋┗┛┗┛╋╋╋╋┗━━┛╋╋╋╋┗━━┛╋╋╋╋┗┻┻┛╋╋╋╋┗┛┗┛╋╋╋╋┗━━┛╋╋╋╋┗━━┛ a
