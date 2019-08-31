(define (soq2o3 x y z)
  (compare x y)


(define (compare x y)
  (cond ((> x y) x)
		((> y x) y)
		((= y z) y)))
