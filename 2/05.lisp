; 5. Определите функциональный предикат (НЕКОТОРЫй пред список), который истинен, когда, 
; являющейся функциональным аргументом предикат пред истинен 
; хотя бы для одного элемента списка список.

(defun somme_early_list (function lst) 
     (not
         (null
             (mapcan #'(lambda (x)
                 (cond ((funcall function x) (list T))
                       (t NIL)
                 )) 
             lst)
          )
      )
)

(print(somme_early_list 'evenp '(2 3 5))) ; T 
(print(somme_early_list 'evenp '(1 3 5 ))) ; NIL 
