 (define (cont-frac n d k) 
   (define (loop result term) 
     (if (= term 0) 
         result 
         (loop (/ (n term) 
                  (+ (d term) result)) 
               (- term 1)))) 
  
   (loop 0 k)) 

 (define (cont-frac n d k) 
   (cond ((= k 0) 0) 
         (else (/ (n k) (+ (d k) (cont-frac n d (- k 1))))))) 