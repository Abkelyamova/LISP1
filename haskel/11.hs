-- 11. Реализовать на языке Haskell функцию, которая, чередует элементы списков [a, b, ...] и [1, 2, ...] 

mixing_lists [] [] = []
mixing_lists (x:xs) (y:ys) = x:y:(mixing_lists xs ys)

main = print (mixing_lists [1, 3, 5] [2, 4, 6]) -- [1,2,3,4,5,6]
