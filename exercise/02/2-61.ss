(define (element-of-set? x set)
  (cond ((null? set) false)
        ((= x (car set)) true)
        ((< x (car set)) false)
        (else (element-of-set? x (cdr set)))))

; (define (adjoin-set x set)
;   (if (element-of-set? x set)
;       set
;       (cons x set)))

; (define (adjoin x set)
;     (if (element-of-set? x set)
;         set
;         (if (< (car set) x)
;             ((cons (car set)
;                         (adjoin x (cdr set))))
;             (cons x set))))


; (define (adjoin x set)
;     (if (element-of-set? x set)
;         set
;         (let ((rest (adjoin x (cdr set))))
;             (if (null? set)
;                 (list x)
;                 (if (< (car set) x)
;                     (cons (car set) rest)
;                     (cons x set))))))

 (define (adjoin x set) 
   (cond ((null? set) (list x)) 
         ((= x (car set)) set) 
         ((< x (car set)) (cons x set)) 
         (else (cons (car set) (adjoin x (cdr set)))))) 

(adjoin 3 (list 1 2 4 5))