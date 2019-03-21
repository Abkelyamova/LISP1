;36. Определите предикат НЕПЕРЕСЕКАЮЩИЕСЯ, проверяющий, что два множества не пересекаются, т.е. у них нет общих элементов.

(defun in_dependet (set1 set2)
    (cond 
        ((null set1) t)
        ((null (member (car set1) set2)) (in_dependet (cdr set1) set2))
    )
)

(print (in_dependet '(7 8 9) '(1 2 3 4 5))) ; T
(print (in_dependet '(5 6 9 3) '(8 9 3 0 6))) ; nil
(print (in_dependet '(a v) '(a b c d))) ; nil
(print (in_dependet '(k) '(a b f c d))) ; T
