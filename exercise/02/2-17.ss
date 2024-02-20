(define (last-pair l)
    (if (null? (cdr l))
        (car l)
        (last-pair (cdr l))))

(define l (list 1 2 3 5 ))

(last-pair l)
