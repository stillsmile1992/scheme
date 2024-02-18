(define (fast x y)
    (iter x y 0))
(define (iter a counter product)
    (cond ((= counter 0) product)
        ((even? counter) (iter (double a) (halve counter) product))
        (else (iter a (- counter 1) (+ product a)))))

(define (even? counter)
    (= (remainder counter 2) 0))

(define (double a)
    (+ a a))

(define (halve a)
    (/ a 2))

 (fast 2 4) 
 (fast 4 0) 
 (fast 5 1) 
 (fast 7 10) 
