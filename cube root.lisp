;Chapter 1 exercise 1.8
;Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x,
;then a better approximation is given by the value (x/y^2 + 2y) /3
;Use this formula to implement a cube-root procedure analogous to the square-root procedure. 

;returns given number squared
(define (square x) (* x x))

;returns given number cubed
(define (cube x) (* x x x))

;improves the guess; "Newton's method is based on the fact that if y is an apprxm. to the cube root of x,
;use of (x/y^2 + 2y) /3
(define (improve_cube guess x)
  (/(+(/ x (square guess)) (* 2 guess)) 3))


;returns true if absolute value of guess squared - x(radicand) is smaller than the percentage
(define (good_enough guess x);(= (improve_cube guess x) guess))
		(< (abs(- (cube guess) x)) (* guess 0.00000000000001)))
  
;given two arguments returns guess as good enough approximation
(define (3rit guess x)
	(if (good_enough guess x) 
		guess
		(3rit (improve_cube guess x) x )
	)
)

;returns sqrt of a number
(define (3root x)
	(3rit 1.1 x))

