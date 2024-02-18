(define (F r c)
    (if (or (= c 1) (= c r))
        1
        (+ (F (- r 1)(- c 1)) (F (- r 1) c))))

(f 1 1)
(f 1 2)
(f 2 2)
(f 3 2)
(f 4 2)
(f 4 3)
(f 5 2)
(f 5 3)
(f 5 4)