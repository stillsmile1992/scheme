(define (same-parity a . b)
    (define (sb g result)
        (if (null? g)
            result
            ( if (even? (+ a (car g)))
                (sb (cdr g) (append result (list (car g))))
                (sb (cdr g) result))))
    (sb b (list a)))

(same-parity 1 2 3 4 5)

(same-parity 2 3 4 5 6 7 8)

(define (same-parity-filter . b)
    (define (first-parity)
        (if (even? (car b))
            even?
            odd?))
    (filter (first-parity) b))

(same-parity-filter 1 2 3 4 5)

(same-parity-filter 2 3 4 5 6 7 8)
