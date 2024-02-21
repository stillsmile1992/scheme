; (define (make-mobile left right)
;   (list left right))

(define (make-mobile left right)
  (cons left right))

; (define (make-branch length structure)
;   (list length structure))

(define (make-branch length structure)
  (cons length structure))

(define (left-branch m)
    (if (null? m)
        ()
        (car m)))

(define (right-branch m)
    (if (null? m)
        ()
        (car(cdr m))))

(define (branch-length b)
    (if (null? b)
        ()
        (car b)))

(define (branch-structure b)
    (if (null? b)
        ()
        (car(cdr b))))

(define (total-weight m)
    (cond ((null? m) 0)
            ((not (pair? m)) m)
            (else (let ((left (left-branch m))
                        (right (right-branch m)))
                    (+ (total-weight (branch-structure left))
                       (total-weight (branch-structure right)))))))

(define (balanced? m)
    (cond ((null? m) #t)
        ((not (pair? m)) #t)
        (else (and (= (* (branch-length (left-branch m))
                            (total-weight (branch-structure (left-branch m))))
                        (* (branch-length (right-branch m))
                            (total-weight (branch-structure (right-branch m)))))
                    (balanced? (branch-structure (left-branch m)))
                    (balanced? (branch-structure (right-branch m)))))))

; (define x (make-mobile (make-branch 1 1) (make-branch 1 2)))

(define x (make-mobile 
            (make-branch 4 6) 
            (make-branch 2 (make-mobile (make-branch 5 8)(make-branch 10 4)))))

(left-branch x)

(right-branch x)

(branch-length (left-branch x))

(branch-structure (left-branch x))

(pair? (branch-structure (left-branch x)))

(total-weight x)

; (m-weight x)

; (m-weight (left-branch x))

; (m-weight (right-branch x))

(balanced? x)