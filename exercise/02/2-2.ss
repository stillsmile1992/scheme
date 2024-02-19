(define (make-point x y)
    (cons x y))

(define (x-point p)
    (car p))

(define (y-point p)
    (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment a b x y)
    (cons (make-point a b) (make-point x y)))

(define (start-segment s)
    (car s))

(define (end-segment s)
    (cdr s))

(define (midpoint-segment s)
    (print-point 
        (make-point (/ (+ (car (car s)) (car (cdr s))) 2)
            (/ (+ (cdr (car s)) (cdr (cdr s))) 2))))

(define s 
    (make-segment 1 4 3 6))

(midpoint-segment s)