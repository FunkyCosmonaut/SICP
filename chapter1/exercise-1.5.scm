(define (p) (p))

(define (test x y)
  (if (= x 0)
	  0
	  y))

; Suppose the arguments (test 0 (p))
; Normal-order evaluation will keep expanding (p) indefinitely as it unravels, never actually evaluating, an infinite loop
; Applicative order is just gonna evaluate that if statement and that'll be the end of that, it'll return that zero and never get to the "y"
