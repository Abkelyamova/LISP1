
;38. Определите функцию ОБЪЕДИНЕНИЕ, формирующую объединение двух множеств.
 
(defun num (x set)
    (cond
        ((null set) NIL)
        ((equal (car set) x) t)
        (t (num x (cdr set)))
    )
)

(defun union-set (set1 set2)
    (cond 
        ((null set1) set2)
        ((null set2) set1)
        (t ((lambda (head tail) 
                (if 
                    (num head set2) 
                    (cons head (union-set tail (remove head set2)))
                    (cons head (union-set tail set2))
                )
            )
            (car set1)
            (cdr set1)
           )
        )
    )
)
(print (union-set '(a b c d) '(c d f a))); (a b c d f)

(print (union-set '() '(a b c))); (a b c)
