(defun permutation(lst)  ; Ф-я перетановки 
    (cond                 
        ((null lst) nil) ;Проверяем список, если пустой возвращаем nil
        ((null (cdr lst)) (list lst)) ; Если хвост списка пуст, 
        (t (add-elem-to-each-permutation (car lst) (permutation (cdr lst)))) ;Иначе вызываем ф-ю 2, которая работает с головой списка 
    ) 
) 

(defun add-elem-to-each-permutation (elem perm-lst) 
    (cond 
        ((null perm-lst) nil) 
        (t (append (insert-elem-to-each-pos elem (car perm-lst)) 
                   (add-elem-to-each-permutation elem (cdr perm-lst))) 
        ) 
    ) 
) 

(defun insert-elem-to-each-pos(elem lst) 
    (cond 
        ((null lst) (list elem)) 
        ((atom lst) (insert-elem-to-each-pos elem (list lst))) 
        ( t (cons (cons elem lst) 
                  (insert-elem-to-each-pos-aux elem nil lst) ) ) 
    ) 
) 

(defun insert-elem-to-each-pos-aux(elem lst1 lst2) 
    (cond 
        (( null lst2) nil) 
        (t ((lambda (a) 
                    (cons (append (car a) (list elem) (cadr a)) 
                          ((lambda (x) 
                                   (insert-elem-to-each-pos-aux elem (car x) 
                                                                   (cadr x))) 
                                    a)
                    )) 
                    ((lambda (lst1 lst2) 
                             (list (append lst1 (list (car lst2))) 
                                   (cdr lst2))) 
                             lst1 lst2) 
               ) 
       ) 
    ) 
) 

(print (permutation '(1 2 3)))
