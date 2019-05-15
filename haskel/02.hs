-- 2. Реализовать на языке Haskell функцию нахождения максимального элемента списка. 

max_element_in_line [] = 0
max_element_in_line (x:xs) = 
            if x > (max_element_in_line xs)
            then x
            else (max_element_in_line xs)

main = print $ max_element_in_line [1, 2, 3, 4] -- 4
