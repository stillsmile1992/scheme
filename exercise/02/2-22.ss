; (define (square-list items)
;   (define (iter things answer)
;     (if (null? things)
;         answer
;         (iter (cdr things)
;               (cons (square (car things))
;                     answer))))
;   (iter items ()))

; (define (square-list items)
;   (define (iter things answer)
;     (if (null? things)
;         answer
;         (iter (cdr things)
;               (cons answer
;                     (square 
;                      (car things))))))
;   (iter items ()))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (append answer 
                      (list (square (car things)))))))
    (iter items ()))

(square-list (list 1 2 3 4))

(cons 1 (list 2 3))

(cons (list 2 3) 1)

(cons 1 2)

(list 1 2)

(list 1 (list 1 2))
