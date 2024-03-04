(define (element-of-set? x set)
    (cond ((null? set) false)
        ((equal? x (car set)) true)
            (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
    (cons x set))

(define (union-set set1 set2)
    (cond ((and (null? set1) (not (null? set2))) set2)
        ((and (not (null? set1)) (null? set2)) se1)
        (else (cons (car set1) (union-set (cdr set1) set2)))))

(define (intersection-set set1 set2)
    (cond ((or (null? set1) (null? set2)) '())
            ((and (element-of-set? (car set1) set2) (not (element-of-set? (car set1) (cdr set1))))
                (cons (car set1) (intersection-set (cdr set1) set2)))
            (else (intersection-set (cdr set1) set2))))

(intersection-set (list 1 2 3 3 4) (list 3 4 3 5))

(union-set (list 1 2 3 3 ) (list 3 4 5 5))