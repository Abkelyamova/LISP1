-- 1. Реализовать на языке Haskell функцию вычисления суммы элементов списка.

sum_of_elements_list :: [Integer] -> Integer
sum_of_elements_list [] = 0
sum_of_elements_list (x:xs) = x + (sum_of_elements_list xs)

main = print $ sum_of_elements_list [0, 5, 10] -- 15
