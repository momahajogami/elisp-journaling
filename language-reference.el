
(defun one-digit (n)
  (% n 10))

(string 10)
(defun two-digits (n)
  (concat
   (number-to-string (/ (% n 100) 10))
   (number-to-string (% n 10))))

(defun three-digits (n)
  (concat
   (number-to-string (/ (% n 1000) 100))
   (number-to-string (/ (% n 100) 10))
   (number-to-string (% n 10))))


(defun square (n)
  (* n n))

(mapcar 'square (py-range 10))

(mapcar 'one-digit (py-range 87 100))
(mapcar 'two-digits (py-range 7 100))
(mapcar 'three-digits (py-range 95 101))
