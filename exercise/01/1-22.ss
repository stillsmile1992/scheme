(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) 
         n)
        ((divides? test-divisor n) 
         test-divisor)
        (else (find-divisor 
               n 
               (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (search-for-primes n)
    (iter n 3))

(define (iter n counter)
    (cond ((= counter 0) 
            n)
        ((prime? n)
            (newline)
            (display n) 
            (iter (+ n 1) (- counter 1)))
        (else 
            (iter (+ n 1) counter))))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (search-for-primes n)
      (report-prime (- (runtime) 
                       start-time))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))


(timed-prime-test 10000000000)
(timed-prime-test 100000000000)
(timed-prime-test 1000000000000)
(timed-prime-test 10000000000000)

