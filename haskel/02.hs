-- 2. Реализовать на языке Haskell функцию нахождения максимального элемента списка. 

max_element_in_line [] = 0
max_element_in_line (x:tail) = 
            if x > (max_element_in_line tail)
            then x
            else (max_element_in_line tail)

main = print $ max_element_in_line [1, 2, 3, 4] -- 4
