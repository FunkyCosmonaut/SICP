(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; This one is gonna warp your brain a little if you come from a more traditional background
; the inequality checks if b is greater than zero, "if" it is then we add a and b, if not we subtract.
