;; here are some files that another person
;; might not be interested in.

;; For example.  I don't use Ctrl-o for "open
;; line", so I use this as a prefix for
;; inserting the date and other things.

(defun init ()
  ;; run this to quickly pull up the root
  ;; file for configuring emacs with elisp
  (interactive)
  (find-file "~/.emacs.d/init.el"))



(defun login()
  
  (interactive)
  (find-file "~/Documents/Lists/login"))

(defun lll()
  (interactive)
  (find-file "~/Documents/Lists/"))

(defun insert-date ()
  "Insert current date yyyy-mm-dd."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))


(global-unset-key (kbd "C-o"))
(global-set-key (kbd "C-o C-l") 'insert-date)

;; uh, i forget what this is for
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)



