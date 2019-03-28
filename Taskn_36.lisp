;36. Определите предикат НЕПЕРЕСЕКАЮЩИЕСЯ, проверяющий, 
;что два множества не пересекаются, т.е. у них нет общих элементов.

(defun memberp (x set)
    (cond
        ((null set) NIL)
        ((equal (car set) x) t)
        (t (memberp x (cdr set)))
    )
)

(defun not-intersect (set1 set2)
    (cond 
        ((null set1) t)
        (t (if (memberp (car set1) set2 )
               nil
              (not-intersect (cdr set1) set2)
          )
        )
    )
)
    


(print (not-intersect '(7 8 9) '(1 2 3 4 5))) ; T
(print (not-intersect '(5 6 9 3) '(8 9 3 0 6))) ; nil
(print (not-intersect '(a v) '(a b c d))) ; nil
(print (not-intersect '(k) '(a b f c d))) ; T


