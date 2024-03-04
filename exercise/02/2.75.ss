(define (make-from-real-imag x y)
  (define (dispatch op)
    (cond ((eq? op 'real-part) x)
          ((eq? op 'imag-part) y)
          ((eq? op 'magnitude)
           (sqrt (+ (square x) (square y))))
          ((eq? op 'angle) (atan y x))
          (else
           (error "Unknown op: 
            MAKE-FROM-REAL-IMAG" op))))
  dispatch)

(define (make-from-mag-ang x y)
    (define (dispatch op)
        (cond ((eq? op 'real-part) ( * x (cos (angle y))))
                ((eq? op 'imga-part) ( * x (sin (angle y))))
                    ((eq? op 'magnitude) x)
                    ((eq? op 'angle) y)
                (else 
                    (error "Unknown op:
                        MAKE-FROM-REAL-IMAG" op))))
    dispatch)