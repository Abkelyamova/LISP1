;12 Определите функцию, заменяющую в исходном списке 
;два подряд идущих одинаковых элемента одним. 

(defun delete-couple (list) 
    (cond 
        ((null list) nil)
        (t ((lambda (head tail)
                    (cons head (delete-couple 
                                  (if   
                                      (eq head (car tail))   
                                      (cdr tail)   
                                       tail 
                                  )
                               )
                    )
            )
             (car list) 
             (cdr list)
           ) 
        )
    )
)

(print (delete-couple '(a a a b b n n n n))); (A A B N N)
(print (delete-couple '())); nil
