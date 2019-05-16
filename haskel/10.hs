-- 10. Реализовать на языке Haskell функцию, вычисляющую скалярное проииведение векторов, заданных списками целых чисел.

scalar :: [Integer] -> [Integer] -> Integer
scalar [x] [y] = x*y
scalar (x:xs) (y:ys) = x*y + (scalar xs ys)

main = print (scalar   [1,2] [3,4]) -- 11

-----------------------------------------

scalar :: [Integer] -> [Integer] -> Integer
scalar (x:xs) (y:ys) =  foldr (+) 0 (zipWith (*) (x:xs) (y:ys) )

main = print (scalar [1,2] [3,4])
