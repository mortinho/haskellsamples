module My_map
    where

my_map p [] = []
my_map p (x:xs) = p x : my_map p xs
