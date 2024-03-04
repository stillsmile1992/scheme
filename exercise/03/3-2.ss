(define (make-monitor f)
    (define times-called 0)
    (define (mf message)
        (cond ((eq? message 'how-many-calls?) times-called)
                ((eq? message 'reset-count) (set! times-called 0))
                (else (set! times-called (+ times-called 1))
                        (f message))))
    
    mf)

(define s (make-monitor sqrt))

(s 100)

(s 'how-many-calls?)