(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
                 (count-leaves (cdr x))))))

(define (length x)
    (cond ((null? x) 0)
            (else (+ 1
                    (length (cdr x))))))

(define y (list (list 1 2) 2 3))

(length y)

(count-leaves y)