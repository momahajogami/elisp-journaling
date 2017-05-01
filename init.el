
(load-file "~/.emacs.d/personal.el")
(load-file "~/.emacs.d/ralph.el")


(defun py-range (start &optional end step)
  (unless end
    (setq end start
      start 0))
  (number-sequence start (1- end) step))

(defun three-digits (n)
  (concat
   (number-to-string (/ (% n 1000) 100))
   (number-to-string (/ (% n 100) 10))
   (number-to-string (% n 10))))




(defun two-digits (n)
  (concat
   (number-to-string (/ (% n 100) 10))
   (number-to-string (% n 10))))

    
(defun tny ()
  ;; todays number in year
    (interactive)
     (- (time-to-day-in-year (current-time))
	1))

(defun nice-wrapping ()
  ;; type in short columns with word wrapping
  (interactive)
  (latex-mode)
  (auto-fill-mode t)
  (set-fill-column 47))

(defun today-dir ()
  ;; a directory for each day in 2017
  (interactive)
  (concat (file-name-as-directory
	   "~/Documents/Journal/2017/")
	  (number-to-string (tny))))

(defun today-spill-file ()
  ;; the name of the file for today's journaling
  (concat (file-name-as-directory (today-dir))
	    (concat (number-to-string (tny))
		    ".txt")))

(defun spill ()
  ;; M-x spill
  ;; type this when you just want to speak and you don't know where.
  (interactive)
  (if (file-exists-p (today-dir))
      (progn
	(find-file (today-spill-file))
	(nice-wrapping)
	(save-buffer))
    (progn
      (make-directory (today-dir))
      (find-file (today-spill-file))
      (nice-wrapping)
      (insert (format-time-string "%A %e %B" (current-time)))
      (insert "\n\n\n")
      (save-buffer))))



 4
