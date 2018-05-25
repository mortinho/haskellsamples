module Manilist
    where

import System.IO

main = do
    hSetBuffering stdin LineBuffering
    list <- numget
    print list
    let sum = foldr (+) 0 list
    print sum
    listlist list

numget = do
    putStrLn "numero:"
    input <- getLine
    if read input == 0
        then return []
        else do rest <- numget
                return ((read input ::Int):rest)

factorio 1 = 1
factorio num = num * factorio(num -1) 

listlist [] = return ()
listlist (x:xs) = do
  putStrLn ( show (factorio x) )
  listlist xs
