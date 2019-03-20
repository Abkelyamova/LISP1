;Определите функцию ПОДМНОЖЕСТВО, которая проверяет, является ли одно множество подмножеством другого.Определите также СОБСТВЕННОЕ-ПОДМНОЖЕСТВО.


(defun subset (set1 set2)
    (cond ((null set1) t )
        (
              (member (car set1) set2) (subset (cdr set1) set2)
        )
    )
)  
 

 
(print (subset '(4 3) '(1 2 3 4 5))) ; T
(print (subset '(a b) '(d f g b))) ; nil
 
