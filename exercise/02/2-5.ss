(define (cons a b)
    (* (expt 2 a )
        (expt 3 b)))


(define (car z)
    (if (= (remainder z 2) 0)
        (+ 1 (car (/ z 2)))
        0))

(define (cdr z)
    (if (= (remainder z 3) 0)
        (+ 1 (cdr (/ z 3)))
        0))

(cons 4 5)

(car (cons 4 5))

(cdr (cons 4 5))