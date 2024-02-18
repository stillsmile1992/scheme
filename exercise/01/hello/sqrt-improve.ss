(define (iterative-improve f g)
    (lambda (x) 
        (if (f x)
            x
            ((iterative-improve f g) (g x)))))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt x)
    ((iterative-improve 
        (lambda (y) (< (abs (- (square y) x)) 0.00001))
        (lambda (y) (average y (/ x y))))
    1.0))

(sqrt 4)