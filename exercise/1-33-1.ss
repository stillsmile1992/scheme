(define (filter-accumulate combiner null-value term a next b filter)
    (if (> a b)
        null-value
        (if (filter a)
            (combiner (term a) (filter-accumulate combiner null-value term (next a) next b filter))
            (combiner null-value (filter-accumulate combiner null-value term (next a) next b filter)))))

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
    (if (= n 1)
        false
        (= n (smallest-divisor n))))

(define (inc n)
    (+ n 1))

(define (sum-of-primes a b)
    (filter-accumulate + 0 square a inc b prime?))

(sum-of-primes 1 5 )

(prime? 1)