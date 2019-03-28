;35 Определите функцию ПОДМНОЖЕСТВО, которая проверяет, является ли 
;одно множество подмножеством другого.Определите также СОБСТВЕННОЕ-ПОДМНОЖЕСТВО.

(defun memberp (x set)
    (cond
        ((null set) NIL)
        ((equal (car set) x) t)
        (t (memberp x (cdr set)))
    )
)
    
(defun subset (set1 set2)
    (cond 
        ((null set1) t)
        ((equalp set1 set2) nil)
        ((memberp (car set1) set2) (subset (cdr set1) set2))
    )
)

(print (subset '(4 3) '(4 3))) ; T
(print (subset '(5 6 9 3) '(8 9 3 0 6))) ; nil

(print (subset '(a v) '(a b c d))) ; nil
(print (subset '(a d f) '(a b f c d))) ; T
 
