;Define a procedure that takes three numbers as arguments
;and returns the sum of the squares of the two larger numbers.

(define (square_sum_largers x y z)
  (cond ((< x (and y z)) (+(* z z)(* y y)))
                            ((< y (and x z)) (+(* z z)(* x x)))
                            ((< z (and x y)) (+(* x x)(* y y)))
                            )
                      )

