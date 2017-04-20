(defun nth-elt (elt list)
  "Return element number of ELT in LIST."
  (let ((loc (length (member elt list))))
    (unless (zerop loc)
      (- (length list) loc))))

(defun position-of-this-file ()
  (interactive)
(nth-elt
 (file-name-nondirectory
  (buffer-file-name))
 (directory-files
  (file-name-directory
   (buffer-file-name)))))

(nth (+ 1 (position-of-this-file))
	      (directory-files (file-name-directory (buffer-file-name))))
(defun open-at-n (n)
  (interactive)
  (find-file
   (nth n (directory-files (file-name-directory (buffer-file-name))))))

   
(defun rot ()
  (interactive)
  (open-at-n (+ 1(position-of-this-file))))


