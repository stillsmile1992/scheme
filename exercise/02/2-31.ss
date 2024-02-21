(define (tree-map proc t)
    (map (lambda (sub-t) 
        (if (pair? sub-t)
            (tree-map proc sub-t)
            (proc sub-t)))
    t))

(define (square-tree tree) 
  (tree-map square tree))

(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))