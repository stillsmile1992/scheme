(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
    (lambda (f) (lambda (x) (f ((n f) x)))))

(define one 
    (lambda (f) (lambda (x) (f x))))

(define two
    (lambda (f) (lambda (x) (f (f x)))))

(define three
    (lambda (f) (lambda (x) (f (f (f x))))))

(define (add a b)
    (lambda (f)
        (lambda (x)
            ((a f) ((b f) x)))))

((zero square) 2)

((one square) 2)

((two square) 2)

((three square) 2)

(((add-1 two) square) 2)

(((add two one) square) 2)