(define nil ())

(define (reverse l)
    (define (iter items result)
        (if (null? items)
            result
            (iter (cdr items) (cons (car items) result))))
    (iter l nil))

(define l (list 1 2 3 4))

(reverse l)

(define (reverse-2 l)
    (if (null? (cdr l))
        l
        (append (reverse-2 (cdr l)) (list (car l)))))

(reverse-2 l)



