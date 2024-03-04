; (define (lookup given-key set-of-records)
;   (cond ((null? set-of-records) false)
;         ((equal? given-key 
;                  (key (car set-of-records)))
;          (car set-of-records))
;         (else 
;          (lookup given-key 
;                  (cdr set-of-records)))))

 (define (lookup given-key set-of-records)  
   (if (null? set-of-records) #f 
       (let ((parent (entry set-of-records))) 
         (cond ((eq? parent '()) #f) 
               ((= given-key parent) parent) 
               (else 
                (lookup given-key 
                        (if (< given-key parent) 
                            (left-branch set-of-records) 
                            (right-branch set-of-records)))))))) 