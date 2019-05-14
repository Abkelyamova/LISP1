-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.

sum_of_elements_list [] = 0
sum_of_elements_list (head:tail) = head + (sum_of_elements_list tail)

main = print $ sum_of_elements_list [0, 5, 10] -- 15
