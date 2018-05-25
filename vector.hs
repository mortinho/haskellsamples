module Vector
  where

  g 0 (x:xs) = x
  g n (x:xs) = let nn = if n > length xs then length xs else n in g (nn-1) xs
