module Ioexemple
    where

import System.IO

main = do
    hSetBuffering stdin LineBuffering

ifget = do
    putStrLn "nome:"
    input <- getLine
    if input == "simon" || input== "john" || input=="phil"
        then putStrLn "great"
        else if input == "koen" 
               then putStrLn "debug" 
               else putStrLn "who"     
caseget = do
    putStrLn "nome:"
    input <- getLine
    case input of 
      "simon"->putStrLn "great"
      "john"->putStrLn "great"
      "phil"-> putStrLn "great"
      "koen"-> putStrLn "debug" 
      _-> putStrLn "who"     


factorio 1 = 1
factorio num = num * factorio(num -1) 

listlist [] = return ()
listlist (x:xs) = do
  putStrLn ( show (factorio x) )
  listlist xs
