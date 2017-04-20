
;; I'd like to make a file with data about books
(completing-read
 "Which book are you studying? : "
 '(("beachyBlair" 1)
   ("categoriesForWork" 2)
   ("conceptualMathematics" 3)
   ("niven" 4)
   ("primeNumbers" 5))
 nil t "")


; (directory-files ".")
