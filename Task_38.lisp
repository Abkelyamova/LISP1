;38. Определите функцию ОБЪЕДИНЕНИЕ, формирующую объединение двух множеств.
 
(defun removep(x set)
    (cond
        ((null set) nil)
        (t ((lambda (f rem)
               (if (equal x f) 
                   rem
                  (cons f rem)
               ) 
            ) 
            (car set)
            (removep x (cdr set))
           ) 
        )
    )
)

(defun memberp (x set)
    (cond
        ((null set) NIL)
        ((equal (car set) x) t)
        (t (memberp x (cdr set)))
    )
)

(defun union-set (set1 set2)
    (cond 
        ((null set1) set2)
        ((null set2) set1)
        (t ((lambda (head tail) 
                (if 
                    (memberp head set2) 
                    (cons head (union-set tail 
                                         (removep head 
                                                  set2)
                                )
                    )
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
