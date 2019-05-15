;7. Определите фильтр (УДАЛйЬ-ЕСЛИ-НЕ пред список), удаляющий из списка список
;все элементы, которые не обладают свойством, наличие которого проверяет
;предикат пред.

(defun delete-if-not-early-list (function lst)
    (mapcan 
        (lambda (x) 
            (cond
                ((funcall function  x) NIL)
                (T (list x))
            )
        ) 
    lst)
)

(print (delete-if-not-early-list 'evenp '(1 2 1 2))) ;(1 1)
