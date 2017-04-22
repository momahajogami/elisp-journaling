

;; There are lots of interactive things you can
;; do with your emacs.   The idea I have here
;; is to make a database called grad school of
;; latex files which are can be woven together
;; into problem sets as if one were studying
;; math and physics at a university (hence it
;; is called grad school.)

;; one major philosophical question about style
;; and language which we ought to settle
;; outright is what to call them.  In actual
;; school, they tend to be called problems and
;; solutions.


;; That may be alright but the word problem may
;; not appeal to people outside of this
;; academic culture.  Better perhaps to call
;; them compositions and responses or scores
;; and performances.  What do you think?
;; Insert your suggestions here as comments and
;; push.



;; I'd like to make a file with data about books
(completing-read
 "Which book are you studying? : "
 '(("beachyBlair" 1)
   ("categoriesForWork" 2)
   ("conceptualMathematics" 3)
   ("niven" 4)
   ("primeNumbers" 5))
 nil t "")

;; The elisp is just the user interface for a
;;  bigger idea about organising the lifelong
;;  work of learning math and physics by
;;  reading and responding to the great
;;  literature.


 

; (directory-files ".")
