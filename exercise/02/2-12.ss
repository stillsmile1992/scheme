(define (make-interval a b) (cons a b)) 

(define (upper-bound interval) 
    (max (car interval) (cdr interval))) 

(define (lower-bound interval) 
    (min (car interval) (cdr interval))) 

(define (center i) 
    (/ (+ (upper-bound i) (lower-bound i)) 2))

(define (make-center-percent c p)
    (let ((width (* c (/ p 100))))
        (make-interval (- c width) (+ c width))))

(define (percent i)
    (let ((center (/ (+ (upper-bound i) (lower-bound i)) 2))
            (width (/ (- (upper-bound i) (lower-bound i)) 2)))
         (* (/ width center) 100)))

 (define i (make-center-percent 10 50)) 
 (lower-bound i) 
 (upper-bound i) 
 (center i) 
 (percent i) 