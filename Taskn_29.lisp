;29 Определите функцию, вычисляющую глубину списка (самой глубокой ветви).

(defun depth (lst)
	(if (or (atom lst) (null lst))
		nil
		(max (+ 1 (depth (car lst))) 
                     (depth (cdr lst)))
	)
)	

(print (depth  '(1 2 3)));1
(print (depth '((1) (2 (4) 5) (3))));3
(print (depth '((1) (2) (3))));2
(print (depth 5));0
