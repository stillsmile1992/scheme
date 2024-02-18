(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

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

(define (identity x) x)

(define (relative-prime? m n)
    (= (gcd m n) 1))

(define (product-of-item n)
    (define (filter x)
        (relative-prime? x n))
    (filter-accumulate * 1 identity 1 inc n filter))

(product-of-item 10)