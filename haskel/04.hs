--4. Реализовать на языке Haskell функцию, которая разделяет исходный список 
--из целых чисел на два списка: список положителтных чисел и список отрицательных чисел.

split_lists :: [Integer] -> ([Integer],[Integer])
split_lists []     = ([], [])
split_lists (x:xs) = if x > 0
                     then (x: first, second)
                     else (first, x: second)
                     where (first, second) = (split_lists xs)

main = print $ split_lists [-3..3] -- ([1,2,3],[-3,-2,-1,0])
