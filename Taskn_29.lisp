;Определите функцию, вычисляющую глубину списка (самой глубокой ветви).

( defun depth (list)
    (cond
        ((null list) 0)
        (t ((lambda (a b) 
                    (max a b)
            ) 
            (1+ (depth (cadr list)))
            (1+ (depth (caddr list)))
           )
        )
    )
)

(print (depth '(1 NIL NIL))) ; 1
(print (depth '(A (B (С (В)))))) ; 4
(print (depth NIL)) ; 0
