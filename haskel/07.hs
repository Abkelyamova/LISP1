-- 7. Реализовать на языке Haskell функциию, 
-- заменменяющую в исходном списке все вхождения заданного значения другим..
replacement :: [Integer] -> Integer -> Integer -> [Integer]

replacement [] _ _ = []

replacement (x:xs) a b = if a == x
                         then b:(replacement xs a b)
                         else x:(replacement xs a b)

main = print $ replacement [1, 2, 7, 4, 5] 7 3  -- [1,2,3,4,5]
