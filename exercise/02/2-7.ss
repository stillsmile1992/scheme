(define (make-interval a b) 
    (cons a b))

(define (upper-bound z)
    (max (car z) (cdr z)))

(define (lowwer-bound z)
    (min (car z) (cdr z)))