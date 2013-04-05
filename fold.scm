(define foldl
  (lambda (f s l)
    (if (equal? l ()) s (f (foldl f s (cdr l)) (car l)))
  )
)
(define foldr
  (lambda (f s l)
    (if (equal? l ()) s (f (car l) (foldr f s (cdr l))))
  )
)
(print (foldl + 0 '(1 2 3))) ; 6
(print (foldr + 0 '(1 2 3))) ; 6
(print (foldl - 0 '(1 2 3))) ; -6 (((0 - 1) - 2) - 3)
(print (foldr - 0 '(1 2 3))) ; 2  (1 - (2 - (3 - 0)))
