module Mult
	where

mult 1 b = b
mult a 1 = a
mult a b = a + mult a (b-1)
	
