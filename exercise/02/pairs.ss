(define (cons x y)
    (define (dispatch m)
        (cond ( (= m 0) x)
                ( (= m 1) y)
                    (else 
                        (error "Argument not 0 or 1: CONS" m))))
    dispatch)

(define (car z)
    (z 0))

(define (cdr z)
    (z 1))

(define a (cons 1 2))

(car a)

(cdr a)

((cons 1 2) 0)

((cons 1 2) 1)

((cons 1 2) 3)