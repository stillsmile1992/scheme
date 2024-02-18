(define tolerance 0.00001)

(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))
    (define (try guess)
        (display guess)
        (newline)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    (try first-guess))

(define (x-to-the-x y) 
   (fixed-point (lambda (x) (/ (log y) (log x))) 
     10.0))

(define (average x y)
    (/ (+ x y) 2))

(define (y-to-the-y x) 
   (fixed-point (lambda (y) (average y (/ (log x) (log y)))) 
     10.0)) 

(x-to-the-x 1000)

(y-to-the-y 1000)