;Определите функцию ПОДМНОЖЕСТВО, которая проверяет, является ли одно множество подмножеством другого.Определите также СОБСТВЕННОЕ-ПОДМНОЖЕСТВО.

(defun num (x set)
    (cond
        ((null set) NIL)
        ((equal (car set) x) t)
        (t (num x (cdr set)))
    )
)
    
(defun subset (set1 set2)
    (cond 
        ((null set1) t)
        ((num (car set1) set2) (subset (cdr set1) set2))
    )
    
)

(print (subset '(4 3) '(1 2 3 4 5))) ; T
(print (subset '(5 6 9 3) '(8 9 3 0 6))) ; nil

(print (subset '(a v) '(a b c d))) ; nil
(print (subset '(a d f) '(a b f c d))) ; T
 
