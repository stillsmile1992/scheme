; (define (fringe t)
;     (define (iter things)
;         (if (null? things)
;             ()
;             (if (pair? (car things))
;                 (append (iter (car things)) (iter (cdr things)))
;                 (cons (car things) (iter (cdr things))))))
;     (iter t))

(define (fringe t)
    (cond ((null? t) ())
            ((not (pair? t)) (list t))
            (else (append (fringe (car t)) (fringe (cdr t))))))

(define x (list (list 1 2) (list 3 4)))

(fringe x)

(fringe (list 1 (list 2 3)))

(fringe (list 1 2))

(define y (list 1 2 3))

(car y)

(cdr y)

(pair? 1)

(pair? (list 1))

(pair? ())

(append 1 ())

(append () 1)