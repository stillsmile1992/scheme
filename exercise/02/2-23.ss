(define (for-each proc items)
    (proc (car items))
    (if (not (null? (cdr items)))
        (for-each proc (cdr items))
        #t))

(for-each 
    (lambda (x) (newline) (display x))
    (list 1 5 3 7))