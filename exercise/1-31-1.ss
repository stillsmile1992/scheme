(define (product term a next b)
    (if (> a b) 
        1
        (* (term a)
            (product term (next a) next b))))
            
(define (identity x) x)

(define (next x) (+ x 1))

(define (factorial n)
    (product identity 1 next n))

(define (pi-term n)
    (if (even? n)
        (/ (+ n 2) (+ n 1))
        (/ (+ n 1) (+ n 2))))

(* (product pi-term 1 next 6) 4) 
(* (product pi-term 1 next 100) 4)

