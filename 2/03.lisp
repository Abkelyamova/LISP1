;3. Определите функционал который применяет каждую функ-цию списка к списку х возвращает список, сформированный из результатов

(defun list-to-list-function (lst1 lst2)
    (cond
         ((null (car lst1)) nil) 
         (t (cons (apply (car lst1) lst2)
                  (list-to-list-function (cdr lst1) lst2))))             
)

(print (list-to-list-function '(+ - * +) '(1 2 3 4 5))) ; (15 -13 120 15)
