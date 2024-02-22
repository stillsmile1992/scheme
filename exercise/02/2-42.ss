(define (flatmap proc seq)
    (accumulate append () (map proc seq)))

(define (enumerate-interval low high)
  (if (> low high)
      ()
      (cons low 
            (enumerate-interval 
                (+ low 1) 
                high))))

(define empty-board ())

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op 
                      initial 
                      (cdr sequence)))))

(define (adjoin-position row col rest)
    (cons (list row col) rest))

(define (check a b)
    (let ((ax (car a))
            (ay (cadr  a))
            (bx (car b))
            (by (cadr b)))
        (and (not (= ax bx)) 
                (not (= ay by))
                (not (= (abs (- ax bx)) (abs (- ay by)))))))

(define (safe? y)
    (= 0 (accumulate + 0
            (map (lambda (x)
                    (if (check (car y) x)
                        0
                        1))
            (cdr y)))))

(define (queens board-size)
    (define (queen-cols k)
        (if (= k 0)
            (list ())
            (filter
                (lambda (position) 
                        (safe? position))
                (flatmap 
                        (lambda (rest-of-queens)
                                (map (lambda (new-row)
                                             (adjoin-position 
                                                new-row 
                                                k 
                                                rest-of-queens))
                                     (enumerate-interval 1 board-size)))
                        (queen-cols (- k 1))))))
    (queen-cols board-size))

(length (queens 8))

; (length (queens 11))