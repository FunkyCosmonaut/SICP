

;; These are my solutions to the exercises of SICP
;; These early ones are menial but hey gotta be thorough


10									;evaluates to the number 10

(+ 5 3 4)							;evaluates to 12

(- 9 1)								;evaluates to 8

(/ 6 2)								;evaluates to 3

(+ (* 2 4) (- 4 6))				;evaluates to 6

(define a 3)						;returns nothing, a is now defined as 3;

(define b (+ a 1))					;returns nothing, b is defined as (+ a 1);

(+ a b (* a b))						;returns 19;

(= a b)								;FALSE or more accurately "#f"

(if (and (> b a) (< b (* a b)))		;evaluates to 4
	b
	a)

(cond ((= a 4) 6)					;evaluates to 16
	  ((= b 4) (+ 6 7 a))
	  (else 25))

(+ 2 (if (> b a) (b a))				;evaluates to 6, for the exercise the syntax is borked so gonna throw in a parenthesis here
   )


(* (cond ((> a b) a)				;evaluates to 16
		 ((< a b) b)			
		 (else - 1))
   (+ a 1))

