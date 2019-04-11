;Задача 4.
;Числовой список разбить на подсписки из возрастающих подпоследовательностей максимальной длины рядом стоящих чисел.

(defun list-of-lists (lst)
    (cond
        ((null lst) nil)
        ((null (cdr lst)) (list lst))
        (t ((lambda (prev-result head)
                    (if (< head (caar prev-result))
                       (cons (cons head (car prev-result))
                             (cdr prev-result))
                       (cons (list head) prev-result)))
            (list-of-lists (cdr lst)) (car lst)))
    )
)


(print (list-of-lists '())) 
(print (list-of-lists '(6 5 4 3 2 1)))     
(print (list-of-lists '(2 7 10 8 3 4 9 1 2 0 8 3 2 5)))
