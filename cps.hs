module Cps
  where

  cpsmap f [] = []
  cpsmap f (l:ls) = f l (\y -> y:(cpsmap f ls))

  cpsmap2 f l =cpsmap (\x g -> g (f x) ) l

  cpsfiletr fi [] = []
  cpsfilter fi (x:rst) = fi x ( \y -> y:cpsfilter fi rst )

  cpsfilter2 f list = (/x g -> g x)
