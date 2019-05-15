-- 8. Реализовать на языке Haskell функцию, которая увеличивает элементы исходного списка на единицу.

addition_1 :: [Integer] -> [Integer]
addition_1 (x:xs) = map (+1) (x:xs)

main = print (addition_1   [1,1,1,1,1]) -- [2,2,2,2,2]
