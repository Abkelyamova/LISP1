;38. Определите функцию ОБЪЕДИНЕНИЕ, формирующую объединение двух множеств.

(defun union-set (set1 set2)
    (cond 
        ((null set1) set2)
        ((null set2) set1)
        (t ((lambda (head tail) 
                (if 
                    (member head set2) 
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
 
