;36. Определите предикат НЕПЕРЕСЕКАЮЩИЕСЯ, проверяющий, 
;что два множества не пересекаются, т.е. у них нет общих элементов.

(defun memberp (x set)
    (cond
        ((null set) NIL)
        ((equal (car set) x) t)
        (t (memberp x (cdr set)))
    )
)

(defun not_intersect (set1 set2)
    (cond 
        ((null set1) t )
        ((null(memberp (car set1) set2)) 
              (not_intersect (cdr set1) set2)
        )
    )
)

(print (not_intersect '(7 8 9) '(1 2 3 4 5))) ; T
(print (not_intersect '(5 6 9 3) '(8 9 3 0 6))) ; nil
(print (not_intersect '(a v) '(a b c d))) ; nil
(print (not_intersect '(k) '(a b f c d))) ; T
