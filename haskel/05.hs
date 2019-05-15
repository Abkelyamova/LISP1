-- 5. Реалиpовать на языке Haskell функцию, 
-- замененящую в исходном списке два подряд идущих одинаковых элемента одним

delete_couple :: [Integer] -> [Integer]
delete_couple [] = []
delete_couple (x:xs:xss) = if x == xs
                           then x:(delete_couple xss)
                           else x:(delete_couple (xs:xss))

main = print $ delete_couple [1,1,4,5,5] -- [1,4,5]
