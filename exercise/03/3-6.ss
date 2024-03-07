; (define rand
;   (let ((x random-init))
;     (lambda () (set! x (rand-update x)) x)))

(define random-init 0)

(define (rand-update x)
    (+ x 1))
    
(define rand
    (let ((x random-init))
       (define (dispatch m)
            (cond ((eq? 'reset m)
                    (lambda (y) (set! x y)))
                ((eq? 'generate m)
                    (begin (set! x (rand-update x)) x))
                (else error "Unknown request")))
        dispatch))

(rand 'generate)

(rand 'generate)

((rand 'reset) 0)

(rand 'generate)
