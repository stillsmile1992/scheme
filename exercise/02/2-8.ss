(define (make-interval a b) 
    (cons a b))

(define (upper-bound z)
    (max (car z) (cdr z)))

(define (lower-bound z)
    (min (car z) (cdr z)))

(define (add-interval x y)
    (make-interval (+ (lower-bound x) 
                        (lower-bound y))
                    (+ (upper-bound x) 
                        (upper-bound y))))

(define (sub-interval x y)
    (cond ((or (< (upper-bound x) (lower-bound y))
            (< (upper-bound y) (lower-bound x))) x)
            ((< (lower-bound x) (lower-bound y)) 
                (make-interval (lower-bound x) ( min (upper-bound x) (lower-bound y))))
            (else
                (make-interval (max (lower-bound x) (upper-bound y)) (upper-bound x )))))

(define i (make-interval 2 7)) 

(define j (make-interval 8 3)) 

(define (display-interval i) 
    (newline) 
    (display "[") 
    (display (lower-bound i)) 
    (display ",") 
    (display (upper-bound i)) 
    (display "]")) 

(display-interval i) 
(display-interval j)
(display-interval (sub-interval i j)) 
(display-interval (sub-interval j i)) 