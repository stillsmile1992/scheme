(define (accumulate combiner null-value term a next b)
    (define (iter a res)
        (if (> a b)
            res
            (iter (next a) (combiner (term a) res))))
    (iter a null-value))

(define (sum term a next b)
    (accumulate + 0 term a next b))

(define (product term a next b)
    (accumulate * 1 term a next b))

(define (identity x) x)

(define (next x) (+ x 1))

(sum identity 1 next 100)

(product identity 1 next 10)