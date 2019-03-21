;16 Определите функцию, добавляющую элементы одного списка во второй список, 
;начиная с заданной позиции

(defun insertp (list1 list2 i) 
    (cond ((null list1) list2)
          ((null list2) list1)
          ((equal i 0) (append list2 list1))
          (t (cons (car list1)
                   (insertp (cdr list1) list2
                   (- i 1))
             )
          )
     )
)
   
(print(insertp '(a b c d f g) '(0 0 0) 2)) ;(A B 0 0 0 C D F G) 
(print(insertp '(1 3 5) '(2 4 6) 0)); (2 4 6 1 3 5) 
