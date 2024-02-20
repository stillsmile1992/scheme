(define x (list (list 1 2) (list 3 4)))

(define y (list (list 5 4) 3 (list 2 1)))

(define (reverse l)
    (if (null? (cdr l))
        l
        (append (reverse (cdr l)) (list (car l)))))

(define (deep-reverse items)
    (if (pair? items)
        (append (deep-reverse (cdr items)) (list (deep-reverse (car items))))
        items))

(reverse x)

(deep-reverse x)

(deep-reverse y)

(append (list 1 2) (list 3))