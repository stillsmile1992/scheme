(define (list-ref l n)
    (if (= n 0)
        (car l)
        (list-ref (cdr l) (- n 1))))

(define l (list 1 4 9 16 25))

(define g (list 1 3 5 7))

(display l)

(car l)

(cdr l)

(car (cdr l))

(list-ref l 0)

(define (length l)
    (if (null? l)
        0
        (+ 1 (length (cdr l)))))

(length l)

(define (append l1 l2)
    (if (null? l1)
        l2
        (cons (car l1)
            (append (cdr l1) l2))))

(append l g)

(append g l)