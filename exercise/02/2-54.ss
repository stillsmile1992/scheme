(define (equal? a b)
    (cond ((and (not (pair? a)) (not (pair? b))) 
                (eq? a b))
            ((and (pair? a) (pair? b))
                (and (equal? (car a) (car b))
                        (equal? (cdr a) (cdr b))))
            (else false)))

(equal? '(1 2 3 (4 5)) '(1 2 3 4 5))

(equal? '(1 2 3 (4 5)) '(1 2 3 (4 5)))

(car ''abracad)

(cdr ''abc)