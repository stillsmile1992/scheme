; (define (square-tree t)
;     (cond ((null? t) ())
;             ((not (pair? t)) (square t))
;             (else (cons (square-tree (car t))
;                 (square-tree (cdr t))))))

(define (square-tree t)
    (map (lambda (sub-t)
            (if (pair? sub-t)
                (square-tree sub-t)
                (square sub-t)))
    t))

(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))