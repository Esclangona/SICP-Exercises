;1.1.7 Example Square Roots by Newton's Method 

;returns avarage of given numbers
(define (avarage x y) (/(+ x y) 2))

;returns given number squared
(define (square x) (* x x) )

;improves the guess by avareging the guess with x/guess
(define (improve guess x)
	(avarage guess (/ x guess)))

;returns true if absolute value of guess squared - x(radicand) is smaller than the argument
(define (good_enough guess x)
		(< (abs(- (square guess) x)) 0.000000001))

;given two arguments returns guess as good enough approximation
(define (sqits guess x)
	(if (good_enough guess x)
		guess
		(sqits (improve guess x) x )
	)
)

;returns sqrt of a number
(define (sqrt x)
	(sqits 1.0 x))
