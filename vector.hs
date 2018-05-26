module Vector
  where

  g _ [] = Nothing
  g 1 (x:xs) = x
  g n (x:xs) = g (n-1) xs
  --g n (x:xs) = let nn = if n > length xs then length xs else n in g (nn-1) xs
  
 -- g n (x:xs) | n<length xs = g (n-1) xs
 --            | otherwise = g ((length xs)-1) xs
  
  gdrop n l = head $ drop (n-1) l
