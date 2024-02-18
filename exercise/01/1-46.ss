(define (iterative-improve f g)
    (lambda (x) 
        (if (f x)
            x
            ((iterative-improve f g) (g x)))))

(define (iterative-improve-2 f g)
    (lambda (x)
        (define (iter x) 
            (if (f x)
                x
                (iter (g x))))
        (iter x)))

(define (iterative-improve-3 f g)
    (lambda (x)
        (define (iter x)
            (if (f x)
                x
                (iter (g x))))
        iter))


(define (iterative-improve-4 f g)
    (define (iter x)
        (if (f x)
            x
            (iter (g x))))
    iter
)

(define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))

(define (average x y)
    (/ (+ x y) 2))

(define (fixed-point f first-guess)
    ((iterative-improve 
        (lambda (x) (close-enough? x (f x)))
        f)
        first-guess))

(define (sqrt x)
    ((iterative-improve-4 
        (lambda (y) (< (abs (- (square y) x)) 0.00001))
        (lambda (y) (average y (/ x y))))
    1.0))

(sqrt 4)
