
;; Ralph Hutchison
;; 2016-05-02

;; I'd like to cycle through the files in a directory

(defun nth-elt (elt list)
  "Return element number of ELT in LIST."
  (let ((loc (length (member elt list))))
    (unless (zerop loc)
      (- (length list) loc))))

(defun position-of-this-file ()
  (interactive)
  (nth-elt
   (car (reverse (split-string   
    (buffer-file-name) "/")))
   (directory-files
    (file-name-directory
     (buffer-file-name)))))

(defun position-of-file (fname)
  (interactive)
  (nth-elt
   fname
   (directory-files
    (file-name-directory
     (buffer-file-name)))))

(defun rot-increment (n)
  (interactive)
  (if (eq  (length (directory-files (file-name-directory (buffer-file-name))))
	   (+ 1 n))
      0
    (+ n 1)))

(defun open-at-n (n)
  (interactive)
  (find-file
   (nth n (directory-files (file-name-directory (buffer-file-name))))))

     
(defun rot ()
  ;; rotate file within directory
  (interactive)
  (open-at-n (rot-increment (position-of-this-file))))

;; to-do:
;; rewrite this using elib's queue
;; makethis a repo
;; a (python?) script to replace all single with double digits
;; "properpadding"
