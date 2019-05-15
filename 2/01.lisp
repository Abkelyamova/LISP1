;1. ОпределитеFUNCALLчерез функционал APPLY

(defun funcall-apply (fn lst)
    (apply fn lst)
)

(print(funcall-apply '+ 1 1 1 )) ; 3
(print(funcall '+ 1 1 1)) ; 3
