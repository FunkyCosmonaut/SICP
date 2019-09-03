(require racket/trace)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
				 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
(/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x)
  (* x x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
		(else else-clause)))

;; The new-if statements seems to be caught in an infinite loop, most likely due to it not being a special case
;; Need to step through manually to see it for myself

;; Working through the debugger and re-reading about the substitution model, it turns out that the new-if statements will substitute the parameters of sqrt-iter and good-enough simultaneously thus becuase 
;; of the recursive nature of the program will forever be caught in a spiral of infinite recursion. :O
