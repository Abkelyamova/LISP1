; 7. В заданном списке списков найти самый длинный подсписок. 
; Использовать отображающие и применяющие функционалы. 

(defun max-lenght (lst) 
    (apply 'max (mapcar 'length lst)) 
) 

(defun filter-lenght (lst len) 
    (mapcan 
        (lambda (lst) 
            (if (= len (length lst)) 
            (list lst) 
            Nil 
            ) 
        ) 
        lst 
    ) 
) 

(defun sublist-max-lenght (lst) 
    (filter-lenght lst (max-lenght lst)) 
) 

(print (sublist-max-lenght (list (list 1 2 3 4) (list 1 2) (list 4 5 6 7)))) 
; ((1 2 3 4) (4 5 6 7))
