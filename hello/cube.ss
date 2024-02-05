(define (improve-2 guess x)
  ( / ( + ( / x (* guess guess)) ( * 2 guess)) 3))
(define (cube x) ( * x x x))
(define (good-enough-2 guess x)
  (< (abs (- (cube guess) x)) 0.001))
(define (cube-root-iter guess x)
  (if (good-enough-2 guess x) guess
      (cube-root-iter (improve-2 guess x) x)))
(define (cube-root-of x) (cube-root-iter 1.0 x ))

(cube-root-of 8)
(cube-root-of -27)